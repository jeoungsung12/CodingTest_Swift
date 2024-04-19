def solution(n):
    if len(n) % 2 == 0:
        s = n[(len(n)-1)//2] + n[len(n)//2]
        return s
    else:
        return n[(len(n)-1)//2]