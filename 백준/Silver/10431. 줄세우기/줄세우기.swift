
import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let str = readLine()!.split(separator: " ").map { Int($0)! }
    let num = str.first!
    let arr = str[1...str.count-1]
    var count = 0
    
    let _ = arr.sorted { right, left in
        if right < left {
            count += 1
            return true
        } else {
            return false
        }
    }
    print("\(num) \(count)")
}
