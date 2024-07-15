func solution(_ n:Int64) -> Int64 {
    var answer : Int64 = -1
    var index : Int64 = 0
    while (index * index) <= n {
        if (index * index) == n {
            answer = (index + 1) * (index + 1)
            break
        }else{
            index += 1
        }
    }
    return answer
}