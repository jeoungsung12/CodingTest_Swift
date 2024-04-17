def solution(s):
    p = 0
    y = 0
    n = 0
    for i in s:
        if (i == 'p') | (i == 'P'):
            p += 1
        elif (i == 'y') | (i == 'Y'):
            y += 1
        else:
            n += 1
    if n == len(s):
        answer = True
    elif p == y:
        answer = True
    else:
        answer = False
    return answer