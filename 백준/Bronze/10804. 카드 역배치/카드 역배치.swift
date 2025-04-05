//MARK: 카드 역배치
var arr = [Int](1...20)

for _ in 0..<10 {
    let cmd = readLine()!.split(separator: " ").map { Int($0)! }
    let cmd1 = cmd[0] - 1
    let cmd2 = cmd[1] - 1
    
    let befArr = [Int](arr[0..<cmd1])
    let cmdArr = [Int](arr[cmd1...cmd2]).reversed()
    let afArr = [Int](arr[cmd2+1..<20])
    
    arr = befArr + cmdArr + afArr
}

print(arr.map { String($0) }.joined(separator: " "))
