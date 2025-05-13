import Foundation
/*
 5
 _____
 __*__
 _***_
 __*__
 _*_*_
 */
let n = Int(readLine()!)!
var board: [[String]] = []
for _ in 1...n {
    let input = readLine()!.map { String($0) }
    board.append(input)
}

var head = (0, 0)
for y in 0..<n {
    var flag = false
    for x in 0..<n {
        if board[y][x] == "*" {
            head = (y, x)
            flag = true
            break
        }
    }
    if flag {
        break
    }
}
//헤드의 위치
//print(head.0+1, head.1+1)
//심장의 위치 y x
var heart = (head.0 + 1, head.1)
print(heart.0 + 1, heart.1 + 1)

var leftArm = 0
for x in stride(from: head.1-1, through: 0, by: -1) {
    if board[head.0 + 1][x] == "*" { leftArm += 1 }
}

var rightArm = 0
for x in head.1 + 1..<n {
    if board[head.0 + 1][x] == "*" { rightArm += 1 }
}

var waist = 0
for y in head.0 + 2..<n {
    if board[y][head.1] == "*" { waist += 1 }
}

var leftLeg = 0
for y in head.0 + 2 + waist..<n {
    if board[y][head.1 - 1] == "*" { leftLeg += 1 }
}

var rightLeg = 0
for y in head.0 + 2 + waist..<n {
    if board[y][head.1 + 1] == "*" { rightLeg += 1 }
}

print(leftArm, rightArm, waist, leftLeg, rightLeg)

//왼팔, 오른팔, 허리, 왼다리, 오른다리 길이
