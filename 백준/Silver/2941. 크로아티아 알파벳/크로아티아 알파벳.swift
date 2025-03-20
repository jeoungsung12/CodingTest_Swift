import Foundation

var read = readLine()!
let stringArray = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var count = 0

for item in stringArray {
    while let range = read.range(of: item) {
        count += 1
        read.replaceSubrange(range, with: " ")
    }
}

read.removeAll(where: { $0 == " " })
count += read.count
print(count)
