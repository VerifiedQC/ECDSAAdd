"""Keep large observed interval predicates decidable with shallow type synthesis."""
import re

def compact_predicate(predicate):
    ranges=re.findall(r'\((\d+)\s*≤\s*q\s*∧\s*q\s*<\s*(\d+)\)',predicate)
    if len(ranges)<=30:return predicate
    expected=' ∨ '.join(re.findall(r'\(\d+\s*≤\s*q\s*∧\s*q\s*<\s*\d+\)',predicate))
    assert expected==predicate, 'Unexpected interval predicate syntax'
    items='['+','.join(f'({a},{b})' for a,b in ranges)+']'
    return f'({items} : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true'

def interval_predicate(ranges):
    return compact_predicate(' ∨ '.join(f'({a}≤q ∧ q<{b})' for a,b in ranges) or 'False')


def live_ranges(live):
    ranges=[]
    for q in sorted(live):
        if ranges and ranges[-1][1]==q:ranges[-1][1]=q+1
        else:ranges.append([q,q+1])
    return ranges


def boolean_predicate(ranges):
    items='['+','.join(f'({a},{b})' for a,b in ranges)+']'
    return f'({items} : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true'
