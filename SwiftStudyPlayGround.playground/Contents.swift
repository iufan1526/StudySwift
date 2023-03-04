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


