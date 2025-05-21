import Foundation

let n = Int(readLine()!)!
var usedGomgom = 0
var chatted = Set<String>()

for _ in 0..<n {
    let input = readLine()!
    
    if input == "ENTER" {
        chatted.removeAll()
    } else {
        if !chatted.contains(input) {
            usedGomgom += 1
            chatted.insert(input)
        }
    }
}

print(usedGomgom)
