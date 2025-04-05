//MARK: 일곱 난쟁이
var numbers: [Int] = []
for _ in 0..<9 {
    numbers.append(Int(readLine()!)!)
}

let totalSum = numbers.reduce(0, +)
var result: [Int] = []
for i in 0..<8 {
    for j in (i + 1)..<9 {
        let sum = totalSum - numbers[i] - numbers[j]
        if sum == 100 {
            result = numbers.enumerated()
                .filter { $0.offset != i && $0.offset != j }
                .map { $0.element }
            break
        }
    }
    if !result.isEmpty { break }
}

for ar in result.sorted() {
    print(ar)
}
