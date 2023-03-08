import UIKit

//옵셔널의 선언
var optInt : Int?
var optArray : [String]?
var optDictionary : [String : String]?

//명시적 옵셔널 해제------------------------------------------------
//강제 해제 (Forced Unwrapping)
var optInt2 : Int? = nil
var str = "swift"

//print("강제로 옵셔널타입 해제!!! \(optInt2!)")

//주위!! 값이 nil인지 체크가 필요함

if optInt2 != nil {
    print("강제로 옵셔널타입 해제!!! \(optInt2!)")
}else {
    print("nil값이 들어가있습니다.")
}

if let resultOpt = Int(str) {
    print(resultOpt)
}else {
    print("실패")
}

var captal = ["KR" : "Seoul", "EN" : "London"]

print(captal["KR"]!)

//컴파일러에 의한 옵셔널 자동 해제
let tempInt = Int("123")

tempInt == 123
tempInt == Optional(123)

//묵시적 해제
var str2 : String! = "Test"
print(str2)
