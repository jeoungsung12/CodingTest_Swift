def solution(n, arr1, arr2):
    answer = []
    k = []
    l1 = [[0] * n for _ in range(n)]
    a1 = [[0] * n for _ in range(n)]
    a2 = [[0] * n for _ in range(n)]
    t = 0
    cnt = n-1
    s = ''
    for i in range(len(arr1)):
        while(arr1[i] > 0):
            t = arr1[i] % 2
            arr1[i] //= 2
            a1[i][cnt] = t
            cnt -= 1
            #print(a1[i])
        cnt = n-1
    for i in range(len(arr2)):
        while(arr2[i] > 0):
            t = arr2[i] % 2
            arr2[i] //= 2
            a2[i][cnt] = t
            cnt -= 1
            #print(a1[i])
        cnt = n-1
    for i in range((n)):
        for j in range(n):
            if(a1[i][j] == 1) & (a2[i][j] == 1):
                l1[i][j] = 1
            elif(a1[i][j] == 1) | (a2[i][j] == 1):
                l1[i][j] = 1
            else:
                l1[i][j] = 0
    for i in range(n):
        for j in range(n):
            if(l1[i][j] == 1):
                s += '#'
            else:
                s += ' '
        answer.append(s)
        s = ''
    
    return answer