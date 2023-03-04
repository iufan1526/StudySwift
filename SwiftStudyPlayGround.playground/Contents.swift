import UIKit

//자료형-----------------------------------------------------------------------

//Integer : 음수와 양수를 표현
Int.max
Int.min

Int8.max
Int8.min

Int16.max
Int16.min

Int32.max
Int32.min

Int64.max
Int64.min

//Unsingned Integer : 양수만을 표현 일반 정수형보다 크기가 두배가 크다
UInt.max
UInt.min

//Float , Double : 소수점이 있는 실수값
// Float : 소수점아래 7~8 자리 표현
// Double : 소수점아래 15~16 자리 표현

//Bool : 참 , 거짓등 두가지 상태만 존재
var close = true

//String : 문자열
var name = "김승태"

//Character : 문자
var firstName = "김" // 타입추론으로 인하여 String 으로 간주
var firstName2 : Character = "김" // 타입 어노테이션을 이용하여 명시적으로 선언


//연산자------------------------------------------------------------------

// 닫힌범위 연산자 1...5 1과 5를 포함히여 범위를 표현 ex ) 1 ,2 ,3 ,4 ,5
let a = 1
let b = 5

for row in a...b {
    row
}

// 반닫힌범위 연산자 1..<5 5를 제외한 나머지 범위를 표현 ex ) 1, 2, 3, 4
for row in a..<b {
    row
}

//반복문------------------------------------------------------------------
for row in 1...9 {
    print("2 X \(row) = \(row * 2)")
}

for _ in 1...5 {
    print("루프상수 생략가능합니다")
}

for num in 2...9 {
    for num2 in 1...9 {
        print("\(num) X \(num2) = \(num * num2)")
    }
}

var n = 2

while n < 1000 {
    n *= 2
}
print(n)

var i = 1024

repeat {
  i *= 2
} while i < 1024
print(i)

//조건문------------------------------------------------------------------

var adult = 19
var age = 19

if age >= adult {
    print("성인 입니다.")
}else {
    print("미성년자 입니다.")
}

func divide(base : Int) {
    
    guard base != 0 else {
        print("종료")
        return
    }
    
    print("정상실행")
}

var num = 2

switch num {
    
    case 1 : print("1")
    case 2 : print("2")
    case 2 : print("두번째 2")
    case 1 : print("1")
    default : print("ss")
    
}
