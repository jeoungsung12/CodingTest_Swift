def solution(A,D):
    t = []
    for a in A:
        if a % D == 0:
            t.append(a)
    if len(t) == 0:
        return [-1]
    else:
        return sorted(t)