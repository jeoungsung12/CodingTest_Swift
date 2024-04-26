def solution(nums):
    answer = 0
    l = []
    p = 0
    for i in range(len(nums)):
        for j in range(i+1,len(nums)):
            for k in range(j+1,len(nums)):
                #print((nums[i] + nums[j] + nums[k]))
                for t in range(1,(nums[i] + nums[j] + nums[k])+1):
                    if((nums[i] + nums[j] + nums[k]) % t == 0):
                        answer += 1
                if(answer == 2):
                    p += 1
                answer = 0
    answer = p
        
    return answer