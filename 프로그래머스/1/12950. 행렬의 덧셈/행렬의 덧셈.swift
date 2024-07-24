func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer : [[Int]] = [[]]
    var array : [Int] = []
    for index in 0..<arr1.count {
        array = []
        for sub in 0..<arr1[index].count {
            array.append(arr1[index][sub] + arr2[index][sub])
        }
        answer.append(array)
    }
    answer.removeFirst()
    return answer
}