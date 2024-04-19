def solution(S):
    p = [x for x in S if (x == 'p') | (x == 'P')]
    y = [x for x in S if (x == 'y') | (x == 'Y')]
    if len(p) == len(y):
        return True
    elif (len(p) == 0) & (len(y) == 0):
        return True
    else:
        return False