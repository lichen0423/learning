import Cocoa

var bucketList = ["Climb Mt.Everest"]
var newItems = [
    "Fly hot air ballon to Fiji",
    "Watch the Lord of the Rings trilogy in one day",
    "Go on a walkabout",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]

for item in newItems {
    bucketList.append(item)
}
bucketList.remove(at: 2)
//print(bucketList.count)
//print(bucketList[0...2])
bucketList[2] += " in Australia"
bucketList[0] = "CliMb Mt.Klimanjaro"
bucketList.insert("Toboggan across Alaska", at: 2)
bucketList

var myronsList = ["CliMb Mt.Klimanjaro",
                  "Fly hot air ballon to Fiji",
                  "Toboggan across Alaska",
                  "Go on a walkabout in Australia",
                  "Scuba dive in the Great Blue Hole",
                  "Find a triple rainbow"
]


let equal = (bucketList == myronsList)


var todoList = ["Take out garbage", "Cross off finished items", "Pay billes"]
//var hasPayBills: Bool = false
//
//for todo in todoList {
//    if todo == "Pay billes" {
//        hasPayBills = true
//        break
//        
//    }
//}
//
//print(hasPayBills)
//
//
//
//func arrayCount(Element : String) {
//    var count = 0
//    
//    for todo in todoList {
//        if todo == Element {
//            hasPayBills = true
//            count += 1
//        }
//    }
//    print(count)
//}
//
//arrayCount(Element: "Pay billes")
//
//
//var numbers = ["1", "2", "3", "4"]
//var numbersRevers: [String] = []
//for index in 0..<numbers.count  {
//    
//    numbersRevers.insert(numbers[index], at : 0)
//    
//    
//}
//print(numbersRevers)
//print(numbers.reversed())


func findArrayIndex(todo : String) {
    var foundIndex: Int?
    
    for index in 0..<todoList.count {
        if todoList[index] == todo {
            foundIndex = index
            break
        }
    }
    
    if let foundIndex = foundIndex {
        print("\(todo) is at \(foundIndex)")
    } else {
        print("\(todo) not found")
    }
    
}
print(todoList)
findArrayIndex(todo: "Pay billes")
