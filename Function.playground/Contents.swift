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

//함수는 하나의 값만 반환할수있슴 > 튜플을 이용한 예시
typealias infoResult = (h : Int, a : String)

func getIndivInfo() -> infoResult {
    let height = 180
    let name = "재은씨"
    
    return (height , name)
}

var info = getIndivInfo()
info.h

//외부 매개변수,내부 매개변수
func getHello(to msg : String) {
    print("메세지 출력\(msg)")
}

getHello(to : "김승태를 출력해라")

//가변적으로 인자값을 받을때
func avg(score : Int...) -> Double {
    var total = 0
    for r in score {
        total += r
    }
    return Double(total) / Double(score.count)
}

avg(score: 10,20,30)

//기본값을 같는 매개변수
func echo(message : String, newLine : Bool = true) {
    if newLine == true {
        print("줄바꿈 성공!!")
    }else {
        print("줄바꿈을 하지 않았습니다.")
    }
}

echo(message: "승태")
echo(message: "승태", newLine: true)

//스위프트에서 매개변수는 기본적으로 상수로 선언되서 수정이 불가능함!!!!!
//inout 기본적으로 함수내부와 외부에선 서로 영향을 줄수가 없음
func foo(paramCount: inout Int) -> Int {
    paramCount += 1
    return paramCount
}
var count = 10
foo(paramCount: &count)
//-------------------------------------------------------
//일급 함수의 특성1 : 변수나 상수에 함수를 대입할수 있다
func foo2(base: Int) -> String {
    return "결과값은 \(base + 1) 입니다."
}

let test = foo2
test(1)

//함수를 변수나 상수에 대입하면 함수타입(Function Type)이 된다
func boo(base: Int) -> String {
    return "age\(base)"
}
let fn: (Int) -> String = boo
fn(10)

//타입 어노테이션을 생략하는경우
let fn2 = boo(base:)
fn2(12)

//일급 함수의 특성2 : 함수의 반환 타입으로 함수를 사용할수 있음

//일급 함수의 특성3 : 힘수를 인자값으로 사용할수 있다.

