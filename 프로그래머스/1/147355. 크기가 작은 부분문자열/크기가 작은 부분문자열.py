def solution(T, P):
    t = []
    p = int(P)
    for i in range(0,len(T)-(len(P)-1)):
        answer = ""
        for j in range(i, i+len(P)):
            answer += T[j]
        t.append(int(answer))
    answer = [x for x in (t) if x <= p]
    
    return len(answer)