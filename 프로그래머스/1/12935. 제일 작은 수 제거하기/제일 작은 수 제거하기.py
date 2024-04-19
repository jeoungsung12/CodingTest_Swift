def solution(n):
    if (n == []) | (len(n) == 1):
        return [-1]
    m = min(n)
    n.remove(m)
    return n