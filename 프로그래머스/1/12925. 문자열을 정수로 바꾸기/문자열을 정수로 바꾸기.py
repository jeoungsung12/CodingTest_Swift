def solution(s):
    answer = 0
    if(s[0] == '-'):
        for i in range(1, len(s)):
            answer += int(s[i])
            answer *= 10
        answer *= -1
    elif(s[0] == '+'):
        for i in range(1, len(s)):
            answer += int(s[i])
            answer *= 10
    elif(s[0] >= '0') & (s[0] <= '9'):
        for i in range(0, len(s)):
            answer += int(s[i])
            answer *= 10
    answer //= 10
    return answer