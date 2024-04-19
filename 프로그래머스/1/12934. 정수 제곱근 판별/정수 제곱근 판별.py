def solution(N):
    n = N ** (1/2)
    if (n > 0) & (n.is_integer()):
        n = int(n)
        return (n+1)**2
    else:
        return -1