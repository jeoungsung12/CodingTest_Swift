//MARK: 애너그램 만들기
var N = Array(readLine()!)
var M = Array(readLine()!)

var valueN: [Character: Int] = [:]
var valueM: [Character: Int] = [:]

for char in N {
    valueN[char, default: 0] += 1
}

for char in M {
    valueM[char, default: 0] += 1
}

var commonCount = 0
for (char, countN) in valueN {
    if let countM = valueM[char] {
        commonCount += min(countN, countM)
    }
}

let totalLength = N.count + M.count
let removeCount = totalLength - 2 * commonCount

print(removeCount)
