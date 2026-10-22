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
