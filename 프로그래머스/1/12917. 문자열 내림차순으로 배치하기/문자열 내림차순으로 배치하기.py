def solution(S):
    s = sorted(S, reverse = True)
    answer = ""
    for x in s:
        answer += x
    return answer