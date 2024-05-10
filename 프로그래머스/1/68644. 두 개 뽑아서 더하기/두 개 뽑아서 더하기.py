def solution(n):
    answer = []
    for i in range(len(n)):
        for j in range(i+1,len(n)):
            answer.append(n[i]+n[j])
    answer = sorted(set(answer))
    answer = list(answer)
    return answer