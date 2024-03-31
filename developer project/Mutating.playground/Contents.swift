import Cocoa

func greet(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

//let personalGreeting = greet(name: "Matt", withGreeting: "Hello,")
//print(personalGreeting)
//
//func greeting(forName name: String) -> (String) -> String {
//    func greeting(_ greeting: String) -> String {
//        return "\(greeting) \(name)"
//    }
//    return greeting
//}
//
//let greetMattWith = greeting(forName: "Matt")
//let mattGreeting = greetMattWith("Hello,")



func greeting(_ greeting: String) -> (String) -> String {
    return { (name: String) -> String in
        return "\(greeting) \(name)"}
}

let friendlyGreetingFor = greeting("Hello,")
let mattGreeting = friendlyGreetingFor("Matt")


print(mattGreeting)

struct Person {
    var firstName = "Matt"
    var lastName = "Mathias"
    
    mutating func changeTo(first: String, last: String) {
        self.firstName = first
        self.lastName = last
    }
}

var p = Person()
//let changeName = Person.changeTo
//let changeNameMattTo = changeName(&p)
//changeNameMattTo("John", "Gallagher")
p.changeTo(first: "John", last: "Gallagher")
p.firstName


struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
}
