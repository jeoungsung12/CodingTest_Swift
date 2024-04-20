def solution(t,p):
    l = 0
    for i in range(len(t)):
        answer = ""
        if i + len(p) > len(t):
            break
        for j in range(i, i+len(p)):
            answer += t[j]
        if int(answer) <= int(p):
            l += 1
    return l