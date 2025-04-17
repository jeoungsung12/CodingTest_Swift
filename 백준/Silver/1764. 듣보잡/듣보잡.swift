import Foundation

let str = readLine()!.split(separator: " ").map { Int($0)! }
let n = str.first!
let m = str.last!

var nArr: [String] = []
var mArr: [String] = []

for _ in 0..<n {
    nArr.append(readLine()!)
}

for _ in 0..<m {
    mArr.append(readLine()!)
}

var ans: [String] = []
let set = Set(nArr)

for mAr in mArr {
    if set.contains(mAr) {
        ans.append(mAr)
    }
}

ans = ans.sorted()
print(ans.count)
for a in ans {
    print(a)
}
