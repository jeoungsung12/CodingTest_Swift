def solution(d,b):
    d = sorted(d)
    index = 0
    while(b >= 0) & (index < len(d)):
        b -= d[index]
        index += 1
    if b < 0:
        index -= 1
    return index