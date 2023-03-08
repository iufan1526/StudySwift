import UIKit

//함수 정의법

func printHello() {
    print("안녕하세요!")
}

func sayHello() -> String {
    let str = "안녕하세요"
    return str
}

func printHelloWithName(name : String) {
    print("이름은 \(name)")
}

func sayHelloWithName(name : String) -> String {
    let result = name
    return result
}

printHello()
printHelloWithName(name : "김승태")
