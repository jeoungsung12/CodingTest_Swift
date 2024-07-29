func solution(_ n:Int, _ m:Int) -> [Int] {
    var answer : [Int] = []
    var nArray : [Int] = []
    //최대공약수
    if n >= m {
        for i in 1...n {
            if n % i == 0 {
                if m % i == 0 {
                    nArray.append(i)
                }
            }
        }
    }else{
        for i in 1...m {
            if m % i == 0 {
                if n % i == 0 {
                    nArray.append(i)
                }
            }
        }
    }
    answer.append(nArray.last ?? 0)
    //최소공배수
    var N : Int = n
    var M : Int = m
    var nIndex : Int = 2
    var mIndex : Int = 2
    while true {
        if N == M {
            answer.append(N)
            break
        }else if N > M {
            M = m
            M *= mIndex
            mIndex += 1
        }else if N < M {
            N = n
            N *= nIndex
            nIndex += 1
        }
    }
    return answer
}