def solution(k, m, score):
    answer = 0
    score.sort(reverse=True)
    na = 0
    for i in range(k, 0, -1):
        v = (score.count(i)+na)//m 
        answer += i * m * v
        na = (score.count(i)+na)%m 
    return answer