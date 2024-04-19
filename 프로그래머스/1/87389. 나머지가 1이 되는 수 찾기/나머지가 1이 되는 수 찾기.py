def solution(n):
    index = 1
    while True:
        if n % index == 1:
            return index
        index += 1