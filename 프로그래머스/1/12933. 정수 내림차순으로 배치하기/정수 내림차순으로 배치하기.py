def solution(N):
    t = []
    while(N > 0):
        n = N % 10
        N = N // 10
        t.append(n)
    t = sorted(t, reverse = True)
    answer = 0
    for x in t:
        answer = answer * 10 + x
    return answer