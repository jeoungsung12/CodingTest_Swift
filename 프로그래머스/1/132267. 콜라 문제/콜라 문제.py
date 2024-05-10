def solution(a, b, n):
    answer = 0
    while(1):
        if(n < a):
            break
        if(n - a >= 0):
            answer += b
            n += b
        n -= a
    return answer