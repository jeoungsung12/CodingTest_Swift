func solution(_ a:Int, _ b:Int) -> Int {
    var result : Int = 0
    if a > b {
        for index in b...a {
         result += index
        }
    }else if a < b {
        for index in a...b {
         result += index
        }
    }else{
        result = a
    }
    return result
}