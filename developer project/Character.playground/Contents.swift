

import Cocoa

let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"

for c: Character in mutablePlayground {        //Character 타입 = 문자 자체.
    print("'\(c)'")
}

//유니코드

let oneCoolDude = "\u{1F60E}"            // 유니코드 스칼라 = u{(16진수)} 0,1,2,3,4,5,6,7,8,9,A(10),B(11),C(12),D(13),E(14),F(15)
let aAcute = "\u{0061}\u{0301}"
for scalar in playground.unicodeScalars {
    print("\(scalar.value)")  // scalar.value 에서 출력되는 값은 10진수의 숫자 유니코드 스칼라 u{xxxx}에서 xxxx의 10진수 숫자
}

let aAcutePrecomposed = "\u{00E1}"

let b = (aAcute == aAcutePrecomposed)    //원형적 등가: 두 개의 유니코드 스칼라가 의미상 동일하다. (==)

print("aAcute: \(aAcute.count); aAcutePrecomposed: \(aAcutePrecomposed.count)")

let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]
let range = start...end
let firstFive = playground[range]        //Strinfg.CharacterViwe.Index ?

print(firstFive)

let empty = ""
let emptyAnalyze = empty
let emptyStart = emptyAnalyze.startIndex
let emptyEnd = emptyAnalyze.endIndex
emptyStart == emptyEnd

let empty1 = ""
for empty1Scalar in empty1.unicodeScalars {
    print("\(empty1Scalar.value)")
}

let mission = "Hello"
let missionStart = mission.startIndex
let missionEnd = mission.index(before: mission.endIndex)
let missionRange = missionStart...missionEnd
let missionUnicodeScalars = mission[missionRange]


print(type(of: missionStart))


for scalar in "Hello".unicodeScalars {
    print("\(scalar.value)" , terminator: "")
}
