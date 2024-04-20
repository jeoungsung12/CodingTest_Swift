def solution(s):
    t = s.split(" ")
    answer = ""
    for j in range(0, len(t)):
        for i in range(0, len(t[j]), 1):
            if i % 2 == 0:
                answer += t[j][i].upper()
            else:
                answer += t[j][i].lower()
        if j == len(t) - 1:
            break
        answer += " "
    return answer