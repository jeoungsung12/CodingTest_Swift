def solution(a,b):
    answer = []
    if a < b:
        A = a
        B = b
    else:
        A = b
        B = a
    for i in range(A, B+1, 1):
        answer.append(i)
    return sum(answer)