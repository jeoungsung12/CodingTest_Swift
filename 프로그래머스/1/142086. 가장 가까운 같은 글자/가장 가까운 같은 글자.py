def solution(s):
    answer = []
    for i in range(0,len(s)):
        index = -1
        for j in range(i,-1,-1):
            if (s[i] == s[j]) & (i != j):
                index = i - j
                break
        if index == -1:
            answer.append(index)
        else:
            answer.append(index)
            
    return answer