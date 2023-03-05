import UIKit

//정적 배열 : 처음부터 배열을 구성한는 아이템을 선언하는 방식
var cities = ["Seoul", "New York", "LA", "Santiago"]

cities[0]
cities[1]
cities[2]
cities[3]

cities

//배열순회1 : 배열의 길이를 직접 가져오는방식
let length = cities.count

for idx in 0..<length {
    print(cities[idx])
}

//배열순회2 : 데이터의 크기만큼 반복
for city in cities {
    print(city)
    let idx = cities.index(of: city)
    print("인덱스는 \(idx!) 입니다")
}
//------------------------------------------------------------------------------------------------
//동적 배열 : 처음부터 배열의 데이터를 추가하지 않고 그때그때 동적으로 데이터를 활당해서 사용
var cties2 = Array<String>()
var cites3 = [String]()

//case1
var arry1 : [String] //선언
arry1 = [String]() //초기화

//case2
var arry2 : [String] //선언
arry2 = [] //초기화

//case3
var arry3 : [Int] = [] //타입어노테이션 + 초기화

//case4
var arry4 : Array<Float> = [Float]() //타입어노테이션 + 제네릭 + 초기화

//case5
var arry5 : [String] = Array() //타입어노테이션 + 구방식의 초기화
//------------------------------------------------------------------------------------------------
//배열 아이템 동적 추가
//append(_:) 배열의 맨뒤에 추가
//insert(_:) 특정 인덱스에 데이터를 추가하고 뒤에있던 데이터는 인덱스를 하나씩 이동시킨다
//append(contentsOf:) 배열의 맨뒤에 추가하는것은 동일 여러개의 데이터를 한번에 추가한는 방식 인자값은 항상 배열이여야함

var firstName = [String]()

firstName.append("kim")
firstName.append("lee")
firstName.append("park")
firstName.insert("insert넣기", at: 1)
firstName.append(contentsOf: ["배열로추가1", "배열로추가2"])

//초기화 할때 배열의 크기를 지정할수있는 구문
var test = [String](repeating : "None", count : 3)
//------------------------------------------------------------------------------------------------
// set 집합의 정의 초기값을 넣는 선언
var genres : Set = ["Classic", "Rock", "Balad"]
//초기값을 사용하지 않는 집합
var genres1 = Set<String>()
genres1.insert("Classic")
genres1.insert("Rock")
genres1.insert("Balad")

for genres in genres1 {
    print(genres)
}
// insert로 같은 값을 넣을시 추가되지 않음
// remove 로 삭제 처리

if let removeItem = genres1.remove("Rock") {
    print("\(removeItem)을 삭제 완료 하였습니다")
}else {
    print("삭제를 하지 못했습니다")
}
// removeAll 모든 아이템을 삭제
// contains 특정 아이템을 검색
//------------------------------------------------------------------------------------------------
// 튜플선언 선언후에 추가,삭제,수정을 할수가 없다. 대신 데이터타입이 동일하지 않아두됨 (상수로 선언)
let tupleValue = (1, 2, 3, "김", true)
tupleValue.1
tupleValue.2
tupleValue.3
tupleValue.4

//튜플의 아이템을 개별 변수나 상수에 바인딩해서 사용하는 구문
let (a,b,c,d,e) = tupleValue
a
b
//------------------------------------------------------------------------------------------------
// key 값과 value로 이루어져있는 Dictionary
var capital = ["KR" : "Seoul", "EN" : "London", "FR" : "Paris"]
capital["KR"]
capital["EN"]
capital["FR"]
//동적으로 Dictionary 를 선언하고 추가하는 방법
var capital2 = [String : String]()
capital2["JP"] = "Tokyo"

// 동일한 데이터가있으면 기존값을 반환 없으면 nil
capital2.updateValue("Seoul", forKey: "KR")
capital2["KR"] = nil
capital2.removeValue(forKey: "JP")

//순회방법
for item in capital {
    let (key, value) = item
    print(key , value)
}
for (key , value) in capital {
    print(key , value)
}

