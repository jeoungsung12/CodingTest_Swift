def solution(name, yearning, photo):
    answer = []
    for ph in photo:
        result = 0
        for p in ph:
            for i in range(len(name)):
                if name[i] == p:
                    result += yearning[i]
        answer.append(result)
    return (answer)