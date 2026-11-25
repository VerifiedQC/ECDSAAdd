"""Exact single-step correction in CURRENT P1Life oddRep ABI.
No circuit/count claims: integer formula plus all boundary predicates.
"""
from itertools import product
import json,random


def old_fold(S,p):
    q=(p-1)//2
    return S//2 if S%2 else S//2+q if S<0 else S//2-q-1


def fused(R,Y,minus,p,n):
    N=2**n;f=N-p
    e=-1 if minus else 1;delta=0 if minus else 1
    S=R+e*Y+delta;b=S%2;neg=int(S<0)
    c=1 if neg else -1
    C=-1-(1-b)*c*f
    T=S+C
    assert -N<=T<N and T%2==0 and (T<0)==bool(neg)
    # Low word correction, free right shift, and explicitly restored high bit.
    z=T%N
    result_word=(z//2)+((neg^(1-b))*N//2)
    F=result_word if result_word<N//2 else result_word-N
    q=(p-1)//2
    assert -q-1<=F<=q-1
    assert F==old_fold(S,p)
    D=2*F+1-e*Y-delta
    recovered=int(-q-1<=D<=q-1)
    assert recovered==b
    assert neg==((int(F<0)^1)^b)
    return F,b


def compare_bias(F,Y,minus,p,n):
    q=(p-1)//2;h=(q+1)//2
    assert q%2==1
    mag=-F-1 if F<0 else F
    left=2*(mag-h)+int(F>=0)
    view=-Y-1 if minus^(F<0) else Y
    C=(2**n-p-1)//2
    a=2*mag+int(F>=0)
    b=view+2**(n-1)
    assert left<view if a+C<b else not(left<view)
    assert 0<=a+C<2**n and C<=b<2**n
    return int(a+C<b),int(a<b)


def run():
    rows=[]
    for n,p in[(3,7),(4,11),(5,19),(5,23),(5,31),(6,43),(6,59)]:
        q=(p-1)//2;cases=0;bad=0;example=None
        for R,Y,minus in product(range(-q-1,q),range(-q-1,q),(False,True)):
            F,b=fused(R,Y,minus,p,n)
            exact,approx=compare_bias(F,Y,minus,p,n)
            assert exact==b
            if approx!=b:
                bad+=1
                if example is None:example=dict(R=R,Y=Y,minus=minus,F=F,parity=b,unbiased_compare=approx)
            cases+=1
        rows.append(dict(n=n,p=p,cases=cases,omitted_bias_errors=bad,first_error=example))
    p=2**256-2**32-977;n=256;q=(p-1)//2
    rng=random.Random(275)
    edges=[-q-1,-q,-1,0,1,q-2,q-1]
    inputs=list(product(edges,edges))+[(rng.randrange(-q-1,q),rng.randrange(-q-1,q)) for _ in range(10000)]
    for R,Y in inputs:
        for minus in(False,True):
            F,b=fused(R,Y,minus,p,n)
            assert compare_bias(F,Y,minus,p,n)[0]==b
    rows.append(dict(n=n,p='secp256k1',cases=2*len(inputs)))
    return rows

if __name__=='__main__':print(json.dumps(run(),indent=2))
