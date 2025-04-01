import Foundation

struct Stack<T> {
  private var elements: [T] = []
  private let size: Int

  init(size: Int) {
    self.size = size
    elements.reserveCapacity(size)
  }
}

extension Stack {
    mutating func push(with element: T) {
        if size > self.elements.count {
            self.elements.append(element)
        }
    }
    
    @discardableResult
    mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    func top() -> T? {
        return self.elements.last
    }
}

extension Stack: CustomStringConvertible {
  var description: String {
    elements.description
  }
}

/// { } 괄호쌍이 올바른지 확인하는 메서드를 작성해보세요 :)
func isValid1(_ str: String) -> String {
    var stack: Stack<String> = .init(size: str.count)
    
    for ch in str {
        let st = String(ch)
        if let last = stack.top() {
            if last == "(" {
                if st == ")" {
                    stack.pop()
                } else {
                    stack.push(with: st)
                }
            }
//            else if last == ")" {
//                if st == "(" {
//                    stack.pop()
//                } else {
//                    stack.push(with: st)
//                }
//            }
        } else {
            stack.push(with: st)
        }
    }
    
    return (stack.top() == nil) ? "YES" : "NO"
}

let n = Int(readLine()!)!
for _ in 0..<n {
    let str = readLine()!
    print(isValid1(str))
}
