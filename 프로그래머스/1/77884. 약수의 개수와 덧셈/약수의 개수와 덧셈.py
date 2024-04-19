def solution(a,b):
    answer = 0
    for i in range(a, b+1, 1):
        c = [x for x in range(1,i+1) if i % x == 0]
        if len(c) % 2 == 0:
            answer += i
        else:
            answer -= i
    return answer