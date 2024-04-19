def solution(x, n):
    answer = []
    count = 0
    a = x
    while(count < n):
        answer.append(a)
        a += x
        count += 1
    return answer