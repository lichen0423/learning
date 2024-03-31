//import Cocoa
//
//let volunteerCounts = [1,3,40,32,2,53,77,13]
//
//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}
//let volunteersSorted1 = volunteerCounts.sorted(by: sortAscending(_:_:))       //함수를 정의해 규칙에 따라 sorted(by:) 메서드가 작동한다.
//
//let volunteersSorted2 = volunteerCounts.sorted(by: {            //클로저를 사용하면 함수를 따로 정의하지 않고 바로 적용할 수 있다.
//    (_ i: Int, _ j: Int) -> Bool in
//    return i < j
//})
//
//let voluteersSorted3 = volunteerCounts.sorted(by: { i, j in i < j })           // 파라미터와 리턴값의 타입을 컴파일러가 추론할 수 있다면 생략할 수 있다. 추가로 return 키워드도 제거했는데 수식이 겨럭이라면 명시적으로 return을 두어야한다.
//
//let volunteersSorted4 = volunteersSorted1.sorted(by: { $0 < $1 }) // sorted(by:)의 인수로 전달할 배열의 요소로 같은 타입의 파라미터 두 개를 받는다.  클로저의 인수가 두개이고 이 두 인수가 서로 비교되어 그 순서가 결정되기 떄문에 인수의 이름이 없어도 첫번째 인수는 $0, 두번쨰 인수는 $1로 나타낼 수 있다.
//
//let volunteersSorted5 = volunteersSorted1.sorted{ $0 < $1 } //후행 클로저 문법
//
//
////func makeTownGrand() -> (Int, Int) -> Int {
////    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
////        return lights + existingLights
////    }
////    return buildRoads(byAddingLights:toExistingLights:)
////}
////
////var stoplights = 4
////let townPlanByAddingLightsToExistingLights: (Int, Int) -> Int = makeTownGrand()          //makeTownGrand()
////stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
////print("Knowhere has \(stoplights) stoplights.")
//
//func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
//    if condition(budget) {
//        func buildRoads(byAddingLights lights: Int, toExistingLightsL existingLights: Int) -> Int {
//            return lights + existingLights
//        }
//        return buildRoads
//    } else {
//        return nil
//    }
//}
//func evaluate(budget: Int) -> Bool {
//    return budget > 10_000
//}
//
//var stoplights = 4
//
//if let townPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 10_00, condition: evaluate) {
//    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
//}
//print("Knowhere has \(stoplights) stoplights.")
//
//func makePopulationTracker(forInitiaPopulation population: Int) -> (Int) -> Int {
//    var totalPopulation = population
//    func populationTracker(growth: Int) -> Int {
//        totalPopulation += growth
////        print(totalPopulation)
//        return totalPopulation
//    }
//    return populationTracker(growth:)
//}
//
//var currentPopulation = 5_422
//let growBy = makePopulationTracker(forInitiaPopulation: currentPopulation)
//growBy(500)
//growBy(500)
//growBy(500)
//currentPopulation = growBy(500)
//
//let anotherGrowBy = growBy
//anotherGrowBy(500) //
//
//var bigCityPopulation = 4_061_981
//let bigCityGrowBy = makePopulationTracker(forInitiaPopulation: bigCityPopulation)
//bigCityPopulation = bigCityGrowBy(10_000)
//currentPopulation
//
//
//let precinctPopulations = [1244, 2021, 2157]
//let projectedPopulations = precinctPopulations.map {
//    (population: Int) -> Int in
//    return population * 2
//}
//projectedPopulations
//let bigProjections = projectedPopulations.filter {
//    (projection: Int) -> Bool in
//    return projection > 4000
//}
//bigProjections
//
//let totalProjection = projectedPopulations.reduce(0) {
//    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
//    return accumulatedProjection + precinctProjection
//}
//totalProjection
//
//
//
//let volunteerCounts1 = [1,3,40,32,2,53,77,13].sorted() //예선과제1
//
//
//volunteerCounts.reduce(0, +)
//var volunteerCounts10 = [1,3,40,32,2,53,77,13]
//volunteerCounts10.sort(by: < )
//print(volunteerCounts10)
//volunteerCounts.filter {$0 % 2 == 1}
//let numbers = [11, 22, 33, 44, 55, 66, 77, 88, 99]
//let sum = numbers.filter {$0 % 2 == 1}.map {$0 * 2}.reduce(0, +)
//func toFilter(_ target: Int) -> Bool {
//    ()
//return target % 2 == 1
//}
//
//func toMap(_ target: Int) -> Int {
//return target * 2
//}
//let sum2 = numbers.filter(toFilter).map(toMap).reduce(0, +)


let numbers = [11, 22, 33, 44, 55, 66, 77, 88, 99]
let sum = numbers.filter(isOdd)
            .map(multiple())
            .reduce(0, +)
        
func isOdd(_ n: Int) -> Bool {
  return n % 2 == 1
}

//multiple(by: 2) : (Int) -> Int
//multiple : (Int) -> (Int) -> Int
        
func multiple() -> (Int) -> Int {
   return { $0 * 2 }
}
