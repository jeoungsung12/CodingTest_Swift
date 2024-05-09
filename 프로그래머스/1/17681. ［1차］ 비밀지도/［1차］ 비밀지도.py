def solution(n,arr1,arr2):
    answer1 = ""
    result = [[]]
    for arr in arr1:
        for i in range(n):
            if arr % 2 == 0:
                answer1 += " "
            else:
                answer1 += "#"
            arr = arr // 2
        answer1 += "\n"
    answer2 = ""
    for arr in arr2:
        for i in range(n):
            if arr % 2 == 0:
                answer2 += " "
            else:
                answer2 += "#"
            arr = arr // 2
        answer2 += "\n"
    answer = [[0 for _ in range(n)] for _ in range(n)]
    index = 0
    for i in range(len(answer1)):
        if (answer1[i] == '#') & (answer2[i] == "#"):
            answer[index].append("#")
        elif ((answer1[i] == "#") | (answer2[i] == "#")):
            answer[index].append("#")
        elif ((answer1[i] == " ") & (answer2[i] == " ")):
            answer[index].append(" ")
        else:
            index += 1
    result = []
    for a in answer:
        s = ""
        for d in range(len(a)-1, n-1, -1):
            s += a[d]
        result.append(s)
    return result