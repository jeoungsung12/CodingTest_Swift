def solution(cards1, cards2, goal):
    answer = ''
    a = 0
    b = 0
    for i in range(len(goal)):
        for j in range(a,len(cards1)):
            if(cards1[j] == goal[i]):
                a = j + 1
                continue
            else:
                break
        for j in range(b,len(cards2)):
            if(cards2[j] == goal[i]):
                b = j+1
                continue
            else:
                break
    if(a + b == len(goal)):
        answer = 'Yes'
    else:
        answer = 'No'
    return answer