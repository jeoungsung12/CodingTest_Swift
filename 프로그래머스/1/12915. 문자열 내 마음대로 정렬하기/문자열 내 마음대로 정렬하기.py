def solution(strings, n):
    answer = []
    a = []
    k = ''
    for i in range(len(strings)):
        for j in range(i, len(strings)):
            if(ord(strings[i][n]) > ord(strings[j][n])):
                k = strings[i]
                strings[i] = strings[j]
                strings[j] = k
            elif(ord(strings[i][n]) == ord(strings[j][n])):
                if((strings[i]) > (strings[j])):
                    k = strings[i]
                    strings[i] = strings[j]
                    strings[j] = k
                    
                

    for i in range(len(strings)):
        answer.append(strings[i])
    return answer