def solution(arr,cmd):
    answer = []
    for c in cmd:
        l = []
        for j in range(c[0]-1,c[1]):
            l.append(arr[j])
        l = sorted(l)
        answer.append(l[c[2]-1])
    
    return answer