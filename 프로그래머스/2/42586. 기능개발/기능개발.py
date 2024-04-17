def solution(progresses, speeds):
    answer = []
    p1 = 100 - progresses[0]
    maxV = (p1//speeds[0]) + (1 if p1%speeds[0] > 0 else 0)
    cnt = 1
    for i in range(1, len(progresses)):
        p = 100 - progresses[i]
        v = (p//speeds[i]) + (1 if p%speeds[i] > 0 else 0)
        if maxV >= v: # maxV보다 작업 기간이 짧은경우
            cnt += 1
        else: # maxV보다 작업 기간이 긴 경우
            maxV = v
            answer.append(cnt)
            cnt = 1
    answer.append(cnt) # 마지막에 계산한 작업 추가     
    return answer