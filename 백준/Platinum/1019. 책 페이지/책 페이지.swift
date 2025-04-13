import Foundation

func Q8() {
    let n = Int(readLine()!)!
    var page = [Int](repeating: 0, count: 10)
    
    var start = 1
    var end = n
    var digit = 1
    
    while start <= end {
        while start % 10 != 0 && start <= end {
            addDigits(start, digit, &page)
            start += 1
        }

        while end % 10 != 9 && start <= end {
            addDigits(end, digit, &page)
            end -= 1
        }
        if start > end { break }
        
        let count = (end / 10 - start / 10 + 1)
        for i in 0...9 {
            page[i] += count * digit
        }
        
        start /= 10
        end /= 10
        digit *= 10
    }
    
    print(page.map { String($0) }.joined(separator: " "))
}

func addDigits(_ num: Int, _ digit: Int, _ page: inout [Int]) {
    var n = num
    while n > 0 {
        page[n % 10] += digit
        n /= 10
    }
}

Q8()
