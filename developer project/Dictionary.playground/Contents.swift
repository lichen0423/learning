import Cocoa

var dict1: Dictionary<String, Double> = [:]
var dict2 = Dictionary<String, Double>()
var dict3: [String:Double] = [:]
var dict4 = [String:Double]()

var movieRating = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
let movieRating2 = ["Chungking Express": 5, "Dark City": 4, "Donnie Darko": 4]

//movieRating.updateValue(3, forKey: "Iron Man")
movieRating["Iron Man"] = 3

movieRating["Dark Night"] = 10

print(movieRating)

movieRating["Dark Night"] = nil

func printRatng(movie: String) {
    if let star = movieRating[movie] {
        let starRating = String(repeating: "⭐️", count: star)
        print("\(movie) : \(starRating)")
    } else {
        print("Not Found this movie")
    }
}
print(movieRating)

printRatng(movie: "Dark City" )

for (movie, rate) in movieRating {
    print("The movie \(movie) was rated \(rate)")
}

var arr: [(movie: String, rate: Int)] = []

for (movie, rate) in movieRating {
    arr.append((movie, rate))
}

print(arr.sorted(by: { $0.movie < $1.movie }))

print("------------------ 본선 과제 ------------------")

let 우편번호사전 = [
    "서울": ["10101", "10202", "10303"],
    "부산": ["20101", "20202", "20303"],
    "천안": ["30101", "30202", "30303"],
    "대구": ["40101", "40202", "40303"]
]

var zipcode: [String] = []
for (시, 우편번호) in 우편번호사전 {
    zipcode += 우편번호
}
print(zipcode)

let people = ["이동영": 32, "이재영": 29, "강성민": 32]

func agedPeople(age: Int) {
    var peopleList: [String] = []
    for (peopleName, peopleAge) in people {
        if  peopleAge == age {
            peopleList.append(peopleName)
        }
    }
    print(peopleList)
}
agedPeople(age: 32)


