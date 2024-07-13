func solution(_ s:String) -> Int {
    var result : Int = 0
    var bool : Bool = false
    var string : String = ""
    for stringInt in s {
        if stringInt == "-" {
            bool = true
        }else{
            string += String(stringInt)
        }
    }
    result = Int(string) ?? 0
    if bool == true{
        result = -result
    }
    return result
}