import Foundation

func function(_ n: Int) -> Int {
    guard n > 0 else { return 0 }
    var queue = [Int](1...n)
    var front = 0
    var count = 0
    
    while queue.count - front > 1 {
        if count % 2 == 0 {
            front += 1
        } else {
            let value = queue[front]
            front += 1
            queue.append(value)
        }
        count += 1
    }
    return queue[front]
}

let read = readLine()!
print(function(Int(read) ?? 1))