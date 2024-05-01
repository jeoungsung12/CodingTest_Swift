def solution(N, stages):
    answer = []
    
    # 스테이지별 플레이어 수를 저장하는 리스트 생성 및 초기화
    player_counts = [0] * (N+2)
    
    # 각 스테이지별 플레이어 수 계산
    for stage in stages:
        player_counts[stage] += 1
    
    # 스테이지별 실패율과 스테이지 번호를 저장하는 리스트 생성
    failure_rates = []
    for i in range(1, N+1):
        total_players = sum(player_counts[i:]) # 이전 스테이지까지의 플레이어 수 누적
        if total_players == 0:
            failure_rate = 0
        else:
            failure_rate = player_counts[i] / total_players
        failure_rates.append((failure_rate, i))
    
    # 실패율을 기준으로 리스트 정렬
    failure_rates.sort(key=lambda x: (-x[0], x[1]))
    
    # 정렬된 스테이지 번호를 answer 리스트에 추가
    for failure_rate, stage_number in failure_rates:
        answer.append(stage_number)
    
    return answer
