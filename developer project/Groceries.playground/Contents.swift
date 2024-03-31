import Cocoa

//
//var groceryBag = Set<String>(["apples"])
//groceryBag.insert("orenges")
//groceryBag.insert("orenges")
//groceryBag.insert("orenges")
//groceryBag.insert("pineapple")
//print(groceryBag)
//
//for food in groceryBag {
//    print(food)
//}
//var groceryBag = Set(["Apples", "Orenges", "Pineapple"])
var myGroceryBag: Set = ["Apples", "Orenges", "Pineapple"]
let friendGroceryBag: Set = ["Cereal", "Orenges", "Bananas", "Milk"]

let commonGroceryBag: Set = myGroceryBag.union(friendGroceryBag)
let roommateGroceryBag: Set = ["Apples", "Bananas", "Cereal", "Toothpaste"]
let itemsToReturn = commonGroceryBag.intersection(roommateGroceryBag)


let isDisjoint = myGroceryBag.isDisjoint(with: friendGroceryBag)


let myCities: Set = ["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"]
let yourCities: Set = ["Chicago",  "San Francisco", "Jacksonville", "New York"]
myCities.intersection(yourCities) == yourCities
myCities.isSuperset(of: yourCities)


