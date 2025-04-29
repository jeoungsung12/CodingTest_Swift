import Foundation

var n = Array(readLine()!)
var s = 0

while !n.isEmpty {
    s += 1
    for c in String(s) {
        if !n.isEmpty && n.first! == c {
            n.removeFirst()
        }
    }
}

print(s)
