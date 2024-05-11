def solution(k,score):
    answer = []
    result = []
    for i in range(len(score)):
        if i >= k :
            if min(result) < score[i]:
                result[0] = (score[i])
                result = sorted(result)
        else:
            result.append(score[i])
            result = sorted(result)
        answer.append(min(result))
    return (answer)