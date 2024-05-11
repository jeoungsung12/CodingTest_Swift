def solution(answers):
    a1 = [1,2,3,4,5]
    a2 = [2,1,2,3,2,4,2,5]
    a3 = [3,3,1,1,2,2,4,4,5,5]
    answer = [0 for _ in range(3)]
    index = 0
    for a in answers:
        if a == a1[index % len(a1)]:
            answer[0] += 1
        if a == a2[index % len(a2)]:
            answer[1] += 1
        if a == a3[index % len(a3)]:
            answer[2] += 1
        index += 1
    m = max(answer)
    result = []
    for i in range(len(answer)):
        if answer[i] == m:
            result.append(i+1)
    return sorted(result)