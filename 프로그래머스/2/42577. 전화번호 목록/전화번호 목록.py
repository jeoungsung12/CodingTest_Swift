def solution(phone_book):
    # 전화번호를 오름차순으로 정렬하여 비교하기 위해 배열을 복사합니다.
    sorted_phone_book = sorted(phone_book)
    
    for i in range(len(sorted_phone_book) - 1):
        # 현재 전화번호와 다음 전화번호를 비교하여 접두어인지 확인합니다.
        if sorted_phone_book[i + 1].startswith(sorted_phone_book[i]):
            return False
    
    return True