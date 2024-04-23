def solution(array, commands):
    answer = []
    k = []
    for i in range(len(commands)):
        for j in range(commands[i][0]-1, commands[i][1]):
            k.append(array[j])
        k = sorted(k)
        answer.append(k[commands[i][2]-1])
        k = []
    return answer