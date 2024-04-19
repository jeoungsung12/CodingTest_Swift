def solution(p,m,c):
    total = 0
    for i in range(1, c+1, 1):
        total += p*i
    if total <= m:
        return 0
    return total - m