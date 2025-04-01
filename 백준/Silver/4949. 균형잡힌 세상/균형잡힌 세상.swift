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
func isValid2(_ str: String) -> Bool {
    var stack = Stack<String>(size: str.count)
    
    for ch in str {
        let current = String(ch)
        if current == "(" || current == "[" {
            stack.push(with: current)
        } else if current == ")" {
            if stack.top() == "(" {
                stack.pop()
            } else {
                return false
            }
        } else if current == "]" {
            if stack.top() == "[" {
                stack.pop()
            } else {
                return false
            }
        }
    }
    return stack.top() == nil
}

while true {
    let str = readLine()!
    if str.count == 1 && str == "." {
        break
    }
    print(isValid2(str) ? "yes" : "no")
}