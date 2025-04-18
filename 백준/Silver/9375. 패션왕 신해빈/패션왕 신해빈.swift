let n = Int(readLine()!)!
    
    for _ in 0..<n {
        let m = Int(readLine()!)!
        var dic: [String:Int] = [:]
        for _ in 0..<m {
            let str = readLine()!.split(separator: " ").map { String($0) }
            dic[str[1], default: 0] += 1
        }
        var result = 1
        for i in dic.values {
            result *= (i + 1)
        }
        
        print(result - 1)
    }