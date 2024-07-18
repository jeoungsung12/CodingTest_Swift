func solution(_ num:Int) -> Int {
    var answer : Int = 0
    var n : Int = num
    while (n != 1) {
        if n % 2 == 0 {
            n /= 2
            answer += 1
        }else{
            n *= 3
            n += 1
            answer += 1
        }
    }
    if answer >= 500 {
        answer = -1
    }
    return answer
}