def solution(s):
    answer = []
    count = 0
    answer.append(-1)
    for i in range(1, len(s)):
        for j in range(i-1, -1, -1):
            if(s[i] == s[j]):
                answer.append(i - j)
                count += 1
                break
        if(count == 0):
            answer.append(-1)
        count = 0
            
    return answer