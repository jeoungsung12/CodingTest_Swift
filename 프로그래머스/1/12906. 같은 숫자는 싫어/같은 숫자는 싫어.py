def solution(N):
    answer = []
    for i in range(0,len(N)-1):
        if N[i+1] == N[i]:
            i += 1
        else:
            answer.append(N[i])
    answer.append(N[len(N)-1])
    return answer