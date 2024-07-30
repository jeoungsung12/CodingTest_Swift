import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var answer : Int = 0
    var index : Int = 0
    var array : [String] = []
    let stringToArray : Array = Array(t)
    var result : String = ""
    while true {
        if index + p.count - 1 >= stringToArray.count {
            break
        }
        for char in index..<index + p.count {
            result += (String(stringToArray[char]))
        }
        array.append(result)
        index += 1
        result = ""
    }
    print(array)
    for arr in array {
        if p >= arr {
            answer += 1
        }
    }
    return answer
}