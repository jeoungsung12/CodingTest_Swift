def solution(A,B):
    C = []
    for i in range(0,len(A)):
        c = []
        for j in range(0,len(A[i])):
            c.append(A[i][j] + B[i][j])
        C.append(c)
    return C