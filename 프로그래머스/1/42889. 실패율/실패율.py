def solution(N,stages):
    #실패율 : 스테이지에 도달했으나 아직 클리어하지 못한 플레이어의 수 / 스테이지에 도달한 플레이어
    #전체 스테이지 개수 N
    #사용자가 현재 멈춰있는 스테이지 번호 stages
    # 스테이지 별로 실패율을 저장할 리스트
    fail_rates = []
    
    # 총 플레이어 수
    total_players = len(stages)
    
    for stage in range(1, N + 1):
        # 현재 스테이지에 도달했으나 아직 클리어하지 못한 플레이어 수
        not_cleared = stages.count(stage)
        
        # 실패율 계산
        if total_players > 0:
            fail_rate = not_cleared / total_players
        else:
            fail_rate = 0
        
        # 스테이지 번호와 실패율을 리스트에 추가
        fail_rates.append((stage, fail_rate))
        
        # 다음 스테이지 계산을 위해 총 플레이어 수를 업데이트
        total_players -= not_cleared
    
    # 실패율을 기준으로 내림차순, 실패율이 같으면 스테이지 번호로 오름차순 정렬
    fail_rates.sort(key=lambda x: (-x[1], x[0]))
    
    # 정렬된 실패율 리스트에서 스테이지 번호만 추출하여 반환
    answer = [stage for stage, _ in fail_rates]
    return answer