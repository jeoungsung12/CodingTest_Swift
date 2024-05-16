def solution(nums):
    answer = 0
    result = 0
    for i in range(len(nums)):
        for j in range(i+1, len(nums)):
            for k in range(j+1, len(nums)):
                for t in range(1, (nums[i] + nums[j] + nums[k] + 1)):
                    if (nums[i]+nums[j]+nums[k]) % t == 0:
                        answer +=1
                if answer == 2:
                    result += 1
                answer = 0
    answer = result
    return answer