def solution(s):
    stack = ""
    answer = ""
    L = [["zero","0"],["one","1"],["two","2"],["three","3"],["four","4"],["five","5"],["six","6"],["seven","7"],["eight","8"],["nine","9"]]
    for x in s:
        if (x >= "0") & (x <= "9"):
            answer += x
        else:
            stack += x
            for l in L:
                if l[0] == stack:
                    stack = ""
                    answer += l[1]
            
    return int(answer)