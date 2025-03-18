let line = readLine()!
let lineArray = line.split(separator: " ")
if let a = Double(lineArray[0]),
   let b = Double(lineArray[1]) {
    print(a / b)
}