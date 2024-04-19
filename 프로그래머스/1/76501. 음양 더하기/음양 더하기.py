def solution(a,s):
    t = []
    for i in range(0, len(a)):
        if s[i] == False:
            a[i] = -a[i]
        t.append(a[i])
    return sum(t)