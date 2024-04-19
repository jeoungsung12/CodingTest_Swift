def solution(n):
    s = ""
    for i in range(0, len(n)):
        if i >= (len(n)) -4:
            s += n[i]
        else:        
            s += '*'
    return s