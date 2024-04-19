def solution(n):
    index = 0
    while True:
        if n == 1:
            return index
        if index >= 500:
            return -1
        if n % 2 == 0:
            n = n // 2
        else:
            n = n * 3 + 1
        index += 1