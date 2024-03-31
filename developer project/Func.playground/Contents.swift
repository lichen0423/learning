import Cocoa
//
//func printGreeting(to names: String...) {
//    var  n = names
//    for name in names {
//        n.append(name)
//        print("Hello, \(name) playground.")
//    }
//    print(n)
//}
//printGreeting(to: "jae young", "dong young")
//
//func divisionDescriptionFor (numerator: Double, denominator: Double, withPunctaution punctaution : String = ".") {
//    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctaution)")
//}
//divisionDescriptionFor(numerator: 9, denominator: 3, withPunctaution: "!")
//
//func add(n1: Int, n2: Int) -> Int {
//    return n1 + n2
//}
//
//func add(to n1: inout Int, d n2: Int) {
//    n1 += n2
//}
//
//
//var n = 0
////let result = add(n1: n, n2: 1)
////print(result)
////
//
//add(to: &n, d: 1)
//
//print(n)
//

func divisionDescriptionFor(numerator: Double, denominator: Double, witjPunctuation punctuation: String = ".") -> (message: String, messageCount: Int) {
    let message = "\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)"
    let countString = message.count
    return (message, countString)
    
}


let result = divisionDescriptionFor(numerator: 9, denominator: 3, witjPunctuation: "!")
print(result.message, result.messageCount, separator: "\n", terminator: "글자입니다.")
print()

func greetingBymiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middlename = name.middle, middlename.count < 4 else {
        print("Hey there!")
        return
    }
    
    print("Hey \(middlename)")
}

let f2: ((String, String?, String)) -> Void = greetingBymiddleName(fromFullName:)

greetingBymiddleName(fromFullName: ("Matt", "Danger", "Mathias"))



func add3(n: Int) -> Int {
    return n + 3
}

let x = 3
let f: (Int) -> Int = add3(n:)
let y = f(x)


func joinMilitary(name: String, age: Int, isMale: Bool) {
    guard age >= 20, isMale == true else {
        guard age >= 20 else {
            print("20세 미만입니다.")
            return
        }
        print("20세 이상이지만, 남자만 가능합니다.")
        return}
    print("\(name)님은 군지원대상자입니다.")
}

func joinMilitary2(name: String, age: Int, isMale: Bool) {
    guard age >= 20 else {
        print("20세 미만입니다.")
        return
    }
    guard isMale else {
        print("20세 이상이지만, 남자만 가능합니다.")
        return
    }
    print("\(name)님은 군 지원 대상자입니다.")
}


func joinMilitary3(name: String, age: Int, isMale: Bool) {
    if age >= 30 , isMale {
        print("\(name)님은 군 지원 대상자입니다.")
    } else if age < 20 {
        print("20세 미만입니다.")
    } else {
        print("20세 이상이지만, 남자만 가능합니다.")
    }
    
    if age > 20 {
        if isMale {
            print("\(name)님은 군 지원 대상자입니다.")
        } else {
            print("20세 이상이지만, 남자만 가능합니다.")
        }
    } else {
        print("20세 미만입니다.")
    }
}
joinMilitary(name: "이재영", age: 29, isMale: true)
joinMilitary(name: "11", age: 19, isMale: false)
joinMilitary(name: "11", age: 25, isMale: false)


joinMilitary2(name: "이재영", age: 29, isMale: true)
joinMilitary2(name: "11", age: 19, isMale: false)
joinMilitary2(name: "11", age: 25, isMale: false)



joinMilitary3(name: "이재영", age: 29, isMale: true)
joinMilitary3(name: "11", age: 19, isMale: false)
joinMilitary3(name: "11", age: 25, isMale: false)


let myGroceryBag = ["green beans", "milk","black beans", "pinto beans", "apples"]


func siftBeans(from list: [String]) -> (beans: [String], others: [String]) {
    var beans: [String] = []
    var others: [String] = []
    for item in list {
        if item.hasSuffix("beans") {
            beans.append(item)
        } else {
            others.append(item)
        }
    }
    return (beans, others)
}



let result2 = siftBeans(from: myGroceryBag)
result2.beans == ["green beans", "black beans", "pinto beans"]
result2.others == ["milk", "apples"]


typealias Name = String


var name: Name = "이재영"

var name2: String = "이동영"

name = name2

typealias Seconds = Int



var n: TimeInterval = 1

print(name)
