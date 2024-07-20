
func solution(_ phone_number:String) -> String {
    var answer : String = ""
    for _ in 0..<phone_number.count-4 {
        answer += "*"
    }
    for index in phone_number.count-4..<phone_number.count {
        let phone = Array(String(phone_number))
        answer += String(phone[index])
    }
    return answer
}