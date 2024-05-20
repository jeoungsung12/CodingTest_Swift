def solution(n, m, section):
    # 페인트를 다시 칠해야 할 구역을 오름차순으로 정렬
    section.sort()
    
    # 롤러로 페인트칠한 횟수
    paint_count = 0
    # 마지막으로 칠한 위치
    last_painted = 0
    
    for s in section:
        # 현재 구역이 마지막으로 칠한 위치보다 크면 롤러를 사용해야 함
        if s > last_painted:
            paint_count += 1
            # 현재 구역부터 롤러 길이만큼을 칠한 것으로 업데이트
            last_painted = s + m - 1
    
    return paint_count