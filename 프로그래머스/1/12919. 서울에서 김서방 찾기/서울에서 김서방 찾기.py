def solution(S):
    for i in range(0,len(S)):
        if S[i] == "Kim":
            return "김서방은 {}에 있다".format(i)