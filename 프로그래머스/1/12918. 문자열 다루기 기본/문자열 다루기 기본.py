def solution(s):
    print(len(s))
    if (len(s) == 4) | (len(s) == 6):
        n = [x for x in s if ((x) >= '0') & ((x) <= '9')]
        if len(s) == len(n):
            return True
        else:
            return False
    else:
        return False