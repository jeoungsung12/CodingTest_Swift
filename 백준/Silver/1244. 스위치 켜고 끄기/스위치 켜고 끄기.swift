let _ = Int(readLine()!)!
    var switchs = [0] + readLine()!.split(separator: " ").map { Int($0)! }
    
    let m = Int(readLine()!)!
    
    for _ in 0..<m {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let gender = input[0]
        let num = input[1]
        
        if gender == 1 {
            for i in stride(from: num, through: switchs.count - 1, by: num) {
                switchs[i] = 1 - switchs[i]
            }
        }
        
        else {
            switchs[num] = 1 - switchs[num]
            
            var left = num - 1
            var right = num + 1
            
            while left >= 1 && right < switchs.count && switchs[left] == switchs[right] {
                switchs[left] = 1 - switchs[left]
                switchs[right] = 1 - switchs[right]
                left -= 1
                right += 1
            }
        }
    }
    
    for i in stride(from: 1, through: switchs.count - 1, by: 20) {
        let end = min(i + 19, switchs.count - 1)
        let line = switchs[i...end].map { String($0) }.joined(separator: " ")
        print(line)
    }