def solution(sizes):
    #가로세로 상관말기
    width = []
    height = []
    answer = 0
    for i in range (len(sizes)):
        width.append(max(sizes[i]))
        height.append(min(sizes[i]))
    answer=max(width)*max(height)
    return answer