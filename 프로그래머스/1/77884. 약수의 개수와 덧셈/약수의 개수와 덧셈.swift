import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var answer : Int = 0
    var count : Int = 0
    for num in left...right {
        count = 0
        for index in 1...num {
            if num % index == 0 {
                count += 1
            }
        }
        if (count % 2 == 0) && (count != 0) {
            answer += num
        }else if (count % 2 != 0) {
            answer -= num
        }
    }
    return answer
}