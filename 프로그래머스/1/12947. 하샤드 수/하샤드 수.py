def solution(N):
    t = []
    k = N
    while(N > 0):
        n = N % 10
        N = N // 10
        t.append(n)
    if k % sum(t) == 0:
        return True
    else:
        return False