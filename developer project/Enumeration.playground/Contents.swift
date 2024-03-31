import Cocoa

enum TextAlignment: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}
var alignment = TextAlignment.justify

print("Left has raw value \(TextAlignment.left.rawValue)")
print("Right has raw value \(TextAlignment.right.rawValue)")
print("Center has raw value \(TextAlignment.center.rawValue)")
print("Justify has raw value \(TextAlignment.justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")

// 원시값을 만든다.
let myRawValue = 20

// 원시값을 TextAlignment로 변환한다.
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    print("successfully convered \(myRawValue) into a TextAlignment")
} else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}

//if alignment == .right {
//    print("We should right-align the text!")
//}

switch alignment {
case . left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aligned")
case .justify:
    print("justified")
}



enum ProgrammingLanguage: String {
    case swift      = "swift"
    case objectiveC = "objective-c"
    case c          = "c"
    case cpp        = "c++"
    case java       = "java"
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum Lightbulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}




var bulb = Lightbulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print(bulbTemperature)


bulb.toggle()
var bulbTemprature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")


enum ShapeDimensions {
    //point에는 연동 값이 없다. 차원이 없기 때문이다.
    case point
    
    //정사각형의 연동값은 한 변의 길이다.
    case square(side: Double)
    
    //직사각형의 연동값은 그 너비와 높이를 정의한다.
    case rectangle(width: Double, height: Double)
    
    case rightTriangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
            
        case let .square(side: side):
            return side * side
            
        case let .rectangle(width: w, height: h):
            return w * h
            
        case let .rightTriangle(width: w, height: h):
            return w * h / 2
            
        }
    }
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
            
        case let .square(side: s):
            return 4 * s
            
        case let .rectangle(width: w, height: h):
            return 2 * ( w + h )
            
        case let .rightTriangle(width: w, height: h):
            return w + h + sqrt(pow(w, 2) + pow(h, 2))
        }
    }
}


var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point
var rightTriangleShape = ShapeDimensions.rightTriangle(width: 3.0, height: 4.0)

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
print("rightTriangle's area = \(rightTriangleShape.area())")

print("square's area = \(squareShape.perimeter())")
print("rectangle's area = \(rectShape.perimeter())")
print("point's area = \(pointShape.perimeter())")
print("rightTriangle's area = \(rightTriangleShape.perimeter())")





// 재귀적 열거형은 서로간의 재귀를 통해 무한대에 달하는 데이터가 될 수 있다.
//그레서 재귀적 열거형의 경우 indirect라는 키워드를 지정하면,
//연동된 데이터(ancestors, fatherAncestors와 같은 FamilyTree타입의 데이터)의 포인터를 저장하는데 다른 공간을 통해 FamilyTree의 인스턴스의 크기는 8바이트가 된다.
//>> 그렇다면 왜 굳이 기본적으로 indirect를 사용하지는 않는 것일까?
//다른 공간에 저장을 하고 그것을 불러오는 것은 재귀를 막지만, 데이터가 두 번 저장되는 손실이 있기 때문에, 상황에 따라 제한적으로 사용하는 것인가?
enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParents(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
                                  motherName: String, motherAncestors: FamilyTree)
}

let fredAncestors = FamilyTree.twoKnownParents(
    fatherName: "Fred Sr.",
    fatherAncestors: .oneKnownParents(name: "Bath", ancestors: .noKnownParents),
    motherName: "Marsha",
    motherAncestors: .noKnownParents)
