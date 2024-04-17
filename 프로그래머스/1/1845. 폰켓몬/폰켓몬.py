def solution(nums):
    answer = 0
    k = set(nums)
    k = list(k)
    t1 = len(k) #종류의 수
    t2 = len(nums)//2 #가질 수
    if(t1 > t2):
        answer = t2
    elif(t1 == t2):
        answer = t1
    else:
        answer = t1
    return answer