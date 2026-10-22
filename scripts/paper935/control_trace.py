"""Read observed control-call journals; never choose physical addresses."""
def replay(stage):
    live = {q for lo, hi in stage['live_before'] for q in range(lo, hi)}
    states = [live.copy()]
    for e in stage['events']:
        q = e['wire']
        assert 0 <= q < 935
        if e['kind'] == 'take':
            assert q not in live
            live.add(q)
        else:
            assert e['kind'] == 'give' and q in live
            live.remove(q)
        states.append(live.copy())
    assert live == {q for lo, hi in stage['live_after'] for q in range(lo, hi)}
    return states

def pairs(events):
    return [(e['kind'], e['wire']) for e in events]

def zero_logs(stage, call):
    """Recover each observed chain+keeper borrow list, indexed by block."""
    assert call['method'] == 'ztest_blocked'
    top, keepers = call['result']
    size = call['kwargs'].get('block', 24)
    bits = call['args'][0]
    assert [k[2] for k in keepers] == [bits[i:i+size] for i in range(0,len(bits),size)]
    cursor, previous, logs = call['start'], None, []
    for kind, keeper, block, prev in keepers:
        assert prev == previous
        length = len(block) + int(prev is not None)
        take = stage['events'][cursor:cursor+length]
        work = [e['wire'] for e in take]
        assert pairs(take) == [('take', q) for q in work]
        assert len(work) == length and work[-1] == keeper
        assert kind == ('copy' if length == 1 else 'chain')
        cursor += length
        release = stage['events'][cursor:cursor+length-1]
        assert pairs(release) == [('give', q) for q in work[:-1][::-1]]
        cursor += length-1
        logs.append(work)
        previous = keeper
    assert cursor == call['end'] and previous == top
    return logs

def free_logs(stage, call):
    """Prefixes are observed at cleanup time and indexed by original block."""
    assert call['method'] == 'ztest_free'
    keepers = call['args'][0]
    cursor, logs = call['start'], []
    for kind, keeper, block, prev in reversed(keepers):
        count = max(0, len(block) + int(prev is not None) - 2)
        take = stage['events'][cursor:cursor+count]
        work = [e['wire'] for e in take]
        assert len(work) == count and pairs(take) == [('take',q) for q in work]
        cursor += count
        release = stage['events'][cursor:cursor+count+1]
        assert pairs(release) == [('give',keeper)] + [('give',q) for q in work[::-1]]
        cursor += count+1
        logs.append(work)
    assert cursor == call['end']
    return logs[::-1]

def freeze_calls(stage):
    assert not stage['early']
    zero, = [c for c in stage['calls'] if c['method']=='ztest_blocked' and c['args'][0]==stage['g']]
    assert zero['kwargs']=={'block':16}
    fire, = [c for c in stage['calls'] if c['method']=='andp' and c['start']==zero['end']]
    assert fire['args']==[zero['result'][0],stage['frozen']] and fire['kwargs']=={'pol':[True,False]}
    eq, = [c for c in stage['calls'] if c['method']=='eq_const' and c['args'][0]==stage['timestamp']]
    assert eq['args'][1]==stage['step']+1-stage['tmin']
    w1, = [c for c in stage['calls'] if c['method']=='andp' and c['start']==eq['end']]
    assert w1['args']==[eq['result'][0],zero['result'][0]] and not w1['kwargs']
    drop, = [c for c in stage['calls'] if c['method']=='ztest_free' and c['args'][0]==zero['result'][1]]
    assert zero['end']<eq['start']<drop['start']
    eq_work=[e['wire'] for e in stage['events'][eq['start']:eq['end']]]
    assert len(eq_work)==len(stage['timestamp'])-1
    assert pairs(stage['events'][eq['start']:drop['start']]) == (
        [('take',q) for q in eq_work]+[('take',w1['result']),('give',fire['result']),('give',w1['result'])]+
        [('give',q) for q in eq_work[::-1]])
    return zero, fire, eq, w1, drop


def early_control_log(stage):
    """Extract actual early F8--F17 logs and check their source call order."""
    assert stage['early'] and len(stage['counter']) == 6
    calls = stage['calls']
    zero, positive, cls = calls[:3]
    sigma, branch = stage['retained_flags']
    fv1, b2, b3, b4 = stage['fv_reads']
    assert zero['method'] == 'zero_test' and zero['args'] == [stage['counter']]
    zero_work = [x[0] for x in zero['result'][1]]
    assert positive['method'] == 'andp' and positive['args'] == [stage['counter'][-1], zero['result'][0]]
    assert positive['kwargs'] == {'pol': [False, False]}
    assert cls['method'] == 'and_chain' and cls['args'] == [[sigma, positive['result']], [False, False]]
    class_work = [x[0] for x in cls['result'][1]]
    fit, = stage['record_fits']
    flag_events = stage['events'][cls['end']:fit['start']]
    assert len(flag_events) == 6 and all(e['kind'] == 'take' for e in flag_events)
    flag_work = [e['wire'] for e in flag_events]
    for call, a, b, out in zip(calls[3:6], [cls['result'][0], flag_work[1], flag_work[3]],
                              [b2, b3, b4], flag_work[::2]):
        assert call['method'] == 'andp' and call['args'] == [a, b] and call['result'] == out
    assert calls[9]['method'] == 'release_chain' and calls[9]['args'] == [cls['result'][1]]
    assert calls[10]['method'] == 'andm' and calls[10]['args'] == [positive['result'], stage['counter'][-1], zero['result'][0]]
    assert calls[11]['method'] == 'release_chain' and calls[11]['args'] == [zero['result'][1]]
    assert len(calls) == 12
    death = stage['sigma_death']
    assert death['sigma'] == sigma and death['fire'] is None and death['fv1'] == fv1
    events = stage['events'][death['start']:death['end']]
    assert len(events) == 1 and events[0]['kind'] == 'give' and events[0]['wire'] == sigma
    tail = stage['events'][death['end']:]
    assert len(tail) == 1 and tail[0]['kind'] == 'give' and tail[0]['wire'] == branch
    return {'zero': zero_work, 'positive': [positive['result']], 'class': class_work,
            'flags': flag_work, 'fresh': fit['after'][len(fit['before']):]}
