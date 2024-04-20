def solution(a):
    answer = []
    while(a > 0):
        answer.append(a % 3)
        a = a // 3
    t = 0
    index = 0
    for i in range(len(answer)-1, -1, -1):
        t += answer[i] * (3**index)
        index += 1
    return t