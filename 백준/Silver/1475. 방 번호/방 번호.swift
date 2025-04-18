 let n = readLine()!
    var dic: [Int:Int] = [:]
    for i in 0...9 {
        dic[i] = 0
    }
    
    for i in n {
        var num = Int(String(i))!
        if num == 6 || num == 9 {
            num = dic[6]! <= dic[9]! ? 6 : 9
        }
        
        dic[num]! += 1
    }
    print(dic.map { $0.value }.max()!)