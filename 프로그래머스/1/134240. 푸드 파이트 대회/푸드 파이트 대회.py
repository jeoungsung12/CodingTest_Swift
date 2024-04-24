def solution(food):
    answer = ''
    count = 1
    a = ''
    b = ''
    k = [1,2,3,4,5,6,7,8,9]
    for i in range(1,len(food)):
        if(food[i] % 2 >= 0):
            count += ((food[i] // 2) * 2)
    for i in range(1, len(food)):
        if(food[i] % 2 >= 0):
            for j in range(0,food[i] // 2, 1):
                a += str(k[i-1])
            for j in range(food[len(food)-i] // 2, 0, -1):
                b += str(k[len(food)-i-1])
    answer += a
    answer += '0'
    answer += b
    return answer