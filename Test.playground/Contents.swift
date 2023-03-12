import UIKit

func plus(a: Int, b:Int) -> Int {
    return a + b
}
func minus(a: Int, b:Int) -> Int {
    return a - b
}
func times(a: Int, b:Int) -> Int {
    return a * b
}
func divide(a: Int, b: Int) -> Int {
    guard a != 0 else {
        return 0
    }
    
    return a / 2
}

func calc(_ operand: String) -> (Int, Int) -> Int {
    
    switch operand {
        case "+" :
            return plus
        case "-" :
            return minus
        case "*" :
            return minus
        case "/" :
            return minus
        default :
            return plus
    }
}

let fn = calc("+")



