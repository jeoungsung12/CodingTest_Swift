//
//  main.swift
//  10_Graph_Start
//
//  Created by Bran on 5/27/25.
//

import Foundation

let read = readLine()!.split(separator: " ").map { Int($0)! }
let n = read.first!
let m = read.last!

//인접 리스트
var adjList: [[Int]] = .init(repeating: [], count: n + 1)
for _ in 0..<m {
    let edge = readLine()!.split(separator: " ").map { Int($0)! }
    adjList[edge[0]].append(edge[1])
    adjList[edge[1]].append(edge[0])
}

var queue: [Int] = []
var front: Int = 0
var vis: [Bool] = .init(repeating: false, count: n+1)

var answer = 0
for start in 1..<n+1 {
    if vis[start] { continue }
    
    queue.append(start)
    vis[start] = true
    answer += 1
    
    while queue.count >= front + 1 {
        let cur = queue[front]
        front += 1
        
        for degree in adjList[cur] {
            if vis[degree] { continue }
            vis[degree] = true
            queue.append(degree)
        }
    }
}

print(answer)
