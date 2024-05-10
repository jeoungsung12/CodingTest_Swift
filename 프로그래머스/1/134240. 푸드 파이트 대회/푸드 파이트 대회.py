def solution(F):
    answer = ""
    index = []
    for i in range(len(F)):
        if F[i] < 2:
            continue
        else:
            index.append([i, (F[i] // 2) * 2])
    for i in index:
        num = i[1]
        for _ in range(num // 2):
            answer += str(i[0])
        
    re = answer
    re = reversed(re)
    re = "".join(re)
    answer += "0"
    answer += re
    return answer