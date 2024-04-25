def solution(number, limit, power):
    answer = 0
    l = [0] * (number+1)
    
    for i in range(1, number+1):
        for j in range(i, number+1, i):  
            l[j] += 1
    
    for i in range(len(l)):
        if(l[i] > limit):
            l[i] = power
    answer = sum(l)
    return answer