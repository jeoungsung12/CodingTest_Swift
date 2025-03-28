let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!

var count = 0
for ar in arr {
    if ar == m {
        count += 1
    }
}
print(count)