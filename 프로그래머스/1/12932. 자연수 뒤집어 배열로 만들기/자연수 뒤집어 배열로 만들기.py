def solution(N):
    t = []
    while(N > 0):
        n = N % 10
        N = N // 10
        t.append(n)
    return t