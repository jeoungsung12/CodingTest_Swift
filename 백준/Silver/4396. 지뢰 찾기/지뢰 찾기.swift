let n = Int(readLine()!)!
    
    var mineGrid: [[Character]] = []
    var gameState: [[Character]] = []
    
    var result: [[Character]] = Array(repeating: Array(repeating: ".", count: n), count: n)
    
    for _ in 0..<n {
        mineGrid.append(Array(readLine()!))
    }
    
    for _ in 0..<n {
        gameState.append(Array(readLine()!))
    }
    
    var gameOver = false
    func countMinesAround(row: Int, col: Int) -> Int {
        let directions = [
            (-1, -1), (-1, 0), (-1, 1),
            (0, -1), (0, 1),
            (1, -1), (1, 0), (1, 1)
        ]
        
        var mineCount = 0
        
        for (dx, dy) in directions {
            let newRow = row + dx
            let newCol = col + dy
            
            if newRow >= 0 && newRow < n && newCol >= 0 && newCol < n {
                if mineGrid[newRow][newCol] == "*" {
                    mineCount += 1
                }
            }
        }
        
        return mineCount
    }
    
    for row in 0..<n {
        for col in 0..<n {
            if gameState[row][col] == "x" {
                if mineGrid[row][col] == "*" {
                    gameOver = true
                }
                else {
                    let mineCount = countMinesAround(row: row, col: col)
                    result[row][col] = Character(String(mineCount))
                }
            }
        }
    }
    
    if gameOver {
        for row in 0..<n {
            for col in 0..<n {
                if mineGrid[row][col] == "*" {
                    result[row][col] = "*"
                }
            }
        }
    }
    
    for row in result {
        print(String(row))
    }