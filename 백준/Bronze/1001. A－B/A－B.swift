let line = readLine()!
let lineArray = line.split(separator: " ")
if let a = Int(lineArray[0]),
   let b = Int(lineArray[1]) {
    print(a - b)
}