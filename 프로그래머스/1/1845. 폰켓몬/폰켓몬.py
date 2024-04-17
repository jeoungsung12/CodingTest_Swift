def solution(n):
    s = set(n) #집합 중복처리
    c1 = len(s) #종류의 수
    c2 = len(n) #전체의 수
    N = c2 // 2 #뽑아야 할 수
    if N < c1:
        answer = N
    elif N > c1:
        answer = c1
    else:
        answer = c1
    return answer