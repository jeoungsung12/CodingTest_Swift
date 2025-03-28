let s = readLine()!
var vis: [String:Int] = [
    "a":0, "b":0, "c":0, "d":0, "e":0, "f":0, "g":0, "h":0, "i":0, "j":0, "k":0, "l":0, "m":0, "n":0, "o":0, "p":0,
    "q":0, "r":0, "s":0, "t":0, "u":0, "v":0, "w":0, "x":0, "y":0, "z":0
]

for item in s {
    if let contain = vis[String(item)] {
        (vis[String(item)]!) += 1
    }
}

let sortedKeys = vis.keys.sorted()
let result = sortedKeys.map { String(vis[$0]!) }.joined(separator: " ")
print(result)