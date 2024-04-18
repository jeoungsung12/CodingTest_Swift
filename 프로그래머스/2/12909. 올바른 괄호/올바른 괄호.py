def solution(s):
    answer = True
    stack = [None for _ in range(len(s))]
    s = list(s)
    end = 0
    if(s[0] == '(') & (len(s) != 1):
        for i in s:
            if(i == '('):
                stack[end] = i
                end += 1
            elif(i == ')'):
                if(stack[end-1] == '('):
                    stack[end-1] = None
                    end -= 1
        stack = set(stack)
        if(len(stack) == 1):
            answer = True
        else:
            answer = False
    else:
        answer = False
    return answer