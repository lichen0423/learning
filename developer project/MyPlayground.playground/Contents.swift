////////import Cocoa
////////
//////////struct BasicInformation {
//////////    let name: String
//////////    var age: Int
//////////}
//////////
//////////var yagomInfo = BasicInformation(name: "yagom", age: 99)
//////////
//////////class Person {
//////////    var height: Float = 0.0
//////////    var weight: Float = 0.0
//////////}
//////////
//////////let yagom = Person()
//////////yagom.height = 182.5
//////////yagom.weight = 78.5
//////////
//////////print(yagomInfo)
//////////dump(yagomInfo)
//////////
//////////print(yagom)
//////////dump(yagom)
//////////
//////////
//////////let name = "yagom"
//////////print("My name is \(name)")
//////////
///////////// 오류 타입의 열거형입니다
///////////// -noName: 이름을 전달받지 못했을 때 발생하는 오류
///////////// -incorrectAge(age: Int): 나이가 0세 미만, 150세 초과인 경우 잘못된 나이로 인식하셔 오류로 처리
///////////// -unknown: 알 수 없는 오류
//////////enum HelloError: Error {
//////////    case noName
//////////    case incorrectAge(age: Int)
//////////    case unknown
//////////}
//////////
///////////**
////////// 여기에 작성되는 텍스트는 Description 부분에 표기됩니다.
//////////
////////// 텍스트 간에 한 줄을 비워놓으면 줄바꿈이 됩니다.
//////////
////////// '-', '+', '*' 를 사용하여 원형 글머리 기호를 사용할 수 있습니다.
//////////
////////// - 이렇게 말이죠
////////// + 이렇게도 되고요
////////// * 이렇게도 됩니다
//////////
////////// 아니면 번호로 글 머리 기호를 매겨줄 수도 있습니다.
//////////
////////// 1. 1번
////////// 2. 2번
////////// 6. 3번
//////////
////////// 눈치채셨겠지만 앞에 붙는 번호는 크게 중요하지 않습니다. 자동으로 번호를 매겨주죠.
//////////
////////// ------------------------------
////////// 문단바꿈
//////////
////////// 바를 세 개 이상 사용하면 긴 줄로 문단을 나눠줍니다.
//////////
////////// ----
////////// 언더바 또는 별표를 사용하여 텍스트를 강조할 수 있습니다.
////////// 텍스트를 기울이고 싶으면 *A pair of marks*를 사용하고
////////// 텍스트를 굷게 표기하고 싶으면 **Two pair of marks**를 사용하면 됩니다.
////////// 관련 링크도 넣어줄 수 있습니다.
////////// [Swift Blog](https://swift.org/blog/)
////////// ____어떻게쓰는거죠?____________
//////////
////////// ---
////////// 등호를 사용하면 바로 위 텍스트를 큰 제목으로 표시해줍니다. 텍스트 앞에 #을 하나 붙여줘도 동일한 효과를 냅니다.
//////////
////////// 큰 제목 표시
////////// ===
//////////
////////// 바를 사용하면 바로 위 텍스트를 중간 크기 제목으로 표시해줍니다. 텍스트 앞에 #을 두 개 붙여줘도 동일한 효과를 냅니다.
//////////
////////// 사용 예
////////// ---
//////////
////////// 다른 텍스트보다 네 칸 이상 들여쓰기하면 코드 블록을 만들어줍니다. 또한 강세표(backquote,')를 세 개 이상 한 쌍으로 묶어도 코드 블록을 만들어줍니다.
//////////
//////////     //코멘트도 넣어줄 수 있지요.
//////////    let myName: String = "yagom"
//////////    try helloSwift(myName, yourAge: 100)
//////////
////////// ````
////////// let myName: String = "yagom"
////////// try helloSwift(myName, yourAge: 100)
//////////
////////// ````
//////////
////////// Precondition, Postcondition, Requires, Invariant, Complexity, Important, Warning, Author, Authors, Copyright, Date, SeeAlso, Since, Version, Attention, Bug, Experiment, Note, Remark, ToDo 등의 키워드를 통해 적절한 정보를 제공해보세요.
//////////
//////////
//////////>Note: 강조하고픈 메모를 노트에 남겨둘 수 있습니다.
//////////
//////////>author: 작성자를 남길 수 있습니다.
//////////
//////////>Warning: 주의해야 할 점을 남길 수도 있습니다. *주의: 하등 쓸모없는 함수임.
//////////
////////// -----
////////// >매개변수와 반환 값 등도 적절히 표기해줄 수 있습니다.
////////// -parameters:
//////////    -yourName:  당신의 이름
//////////    -yourAge:   당신의 나이
////////// -Throws:   오류가 발생하면 HelloError의 한 케이스를 throw
////////// -returns: Hello string
////////// */
//////////func helloSwift(yourName: String?, yourAge age: Int = 0)throws -> String {
//////////
//////////    guard let name: String = yourName else {
//////////        throw HelloError.noName
//////////    }
//////////
//////////    if age > 150 {
//////////        throw HelloError.incorrectAge(age: age)
//////////    }
//////////
//////////    return "Hello Swift!! My name is \(name)." + (age > 0 ? "I'm \(age) years old." : "")
//////////}
//////////print("\(Float.random(in: 1.5...4.3))")
//////////
//////////let alphabetA: Character = "A"
//////////print(alphabetA)
//////////
////////////Character 값에 유니코드 문자를 사용할 수 있습니다.
//////////let commandCharacter: Character = "🫢"
//////////print(commandCharacter)
//////////
////////////한글도 유니코드 문자에 속하므로 스위프트 코드의 변수 이름으로 사용할 수 있습니다.
//////////let 한글변수이름: Character = "ㄱ"
//////////print(한글변수이름)
////////
////////
//////////상수로 선언된 문자열은 변경이 불가능합니다.
////////let name: String = "yagom"
////////
//////////이니셜라이저를 사용하여 빈 문자열을 생성할 수 있습니다.
//////////var 키워드를 사용하여 변수를 생성했으므로 문자엻의 수정 및 변경이 가능합니다.
////////var introduce1: String = String()
////////var introduce2: String
////////
//////////append() 메서드를 사용하여 문자열을 이어붙일 수 있습니다.
////////introduce1.append("제 이름은")
////////introduce2 = "제 이름은"
////////
////////// + 연산자를 통해서도 문자열을 이어붙일 수 있습니다.
////////introduce1 = introduce1 + " " + name + "입니다."
////////introduce2 += " \(name)입니다."
////////
////////// name에 해당하는 문자의 수를 셀 수 있습니다.
////////print("name의 글자 수: \(name.count)")
////////// 빈 문자열인지 확인해볼 수 있습니다.
////////print("introduce1가 비어있습니까?: \(introduce1.isEmpty)")
////////
////////// 유니코드의 스칼라값을 사용하면 값에 해당하는 표현이 출력됩니다.
////////let unicodeScalarValue: String = "\u{2665}"    //"♥"
////////
////////
////////
////////
////////// 연산자를 통한 문자열 결합
////////let hello: String = "Hello"
////////let yagom: String = "yagom"
////////var greeting: String = hello + " " + yagom + "!"
////////print(greeting) //Hello yagom!
////////
////////greeting = hello
////////greeting += " "
////////greeting += yagom
////////greeting += "!"
////////print(greeting) //Hello yagom!
////////
////////
////////
////////// 연산자를 통한 문자열 비교
////////var isSameString: Bool
////////
////////isSameString = hello == "Hello"
////////print(isSameString) //true
////////
////////isSameString = hello == "hello"
////////print(isSameString) //false
////////
////////
////////// 메서드를 통한 접두어, 접미어 확인
////////var hasPrefix: Bool
////////hasPrefix = hello.hasPrefix("He")
////////print(hasPrefix)  //true
////////
////////hasPrefix = hello.hasPrefix("he")
////////print(hasPrefix)  //false
////////
////////hasPrefix = hello.hasPrefix("He ")
////////print(hasPrefix)  //false
////////
////////
////////var hasSuffix: Bool
////////hasSuffix = hello.hasSuffix("He")
////////print(hasSuffix)    // false
////////
////////hasSuffix = hello.hasSuffix("llo")
////////print(hasSuffix)    // true
////////
////////hasSuffix = hello.hasSuffix(" llo")
////////print(hasSuffix)    // false
////////
////////
////////// 메서드를 통한 대소문자 변환
////////var convertedString: String = ""
////////convertedString = hello.uppercased()
////////print(convertedString)  //HELLO
////////
////////convertedString = hello.lowercased()
////////print(convertedString)  //hello
////////
////////
////////// 프로퍼티를 통한 빈 문자열 확인
////////var isEmptyString: Bool
////////isEmptyString = greeting.isEmpty
////////print(isEmptyString)    //false
////////
////////greeting = ""
////////isEmptyString = greeting.isEmpty
////////print(isEmptyString)    //true
////////
////////
//////////프로퍼티를 이용해 문자열 길이 확인
////////print(greeting.count)   //0
////////
////////greeting = "안녕하세요!"
////////print(greeting.count) //6
////////
////////greeting = "Hi, 안녕하세요"
////////print(greeting.count) //9
////////
//////////코드상에서 여러 줄의 문자열을 직접 쓰고 싶다면 큰따옴표 세 개를 사용하면 됩니다.
//////////큰따옴표 세 개를 써주고 한 줄을 내려써야 합니다.
//////////마지막 줄도 큰따옴표 세 개는 한 줄 내려써야 합니다.
////////greeting = """
////////안녕하세요 저는 야곰입니다.
////////스위프트 잘하고 싶어요!
////////잘 부탁드립니다!
////////"""
////////
////////print("문자열 내부에\n 이런 \"특수문자\"를\t사용하면 \\이런 놀라운 결과를 볼 수 있습니다")
////////let number = 100
////////print(#"문자열 내부에서 특수문자를 사용하기 싫다면 문자열 앞, 뒤에 #를 붙여주세요"#)
////////print(#"특수문자를 사용하지 않을 때도 문자열 보간법을 사용하고 싶다면 \t \#\ 이렇게 \#(number) 해보세요"#)
//////////문자열 내부에
////////// 이런 "특수문자"를    사용하면 \이런 놀라운 결과를 볼 수 있습니다
//////////문자열 내부에서 특수문자를 사용하기 싫다면 문자열 앞, 뒤에 #를 붙여주세요
//////////특수문자를 사용하지 않을 때도 문자열 보간법을 사용하고 싶다면 \t      이렇게 100 해보세요
////////
////////
////////var someVar: Any = "yagom"
////////someVar = 50
////////someVar = true
////////print(someVar)
////////
////////
////////typealias MyInt = Int
////////typealias YourInt = Int
////////
////////let age: MyInt = 100
////////var year: YourInt = 2080
////////
////////year = age
////////
////////// String, Int, Double 타입을 갖는 튜플
////////var person: (String, Int, Double) = ("yagom", 100, 182.5)
////////
////////// 인덱스를 통해서 값을 빼 올 수 있습니다.
////////print("이름: \(person.0), 나이:\(person.1), 신장:\(person.2)")
////////
////////person.1 = 99
////////person.2 = 178.5
////////
////////print("이름: \(person.0), 나이:\(person.1), 신장:\(person.2)")
////////
////////typealias PersonTuple = (name: String, age: Int, height: Double)
////////
////////let yagom3: PersonTuple = ("yagom", 100, 178.5)
////////var yagom4: (name: String, age: Int, height: Double) = ("yagom", 100, 178.5)
////////print(yagom3 == yagom4)     //true
////////
////////print("이름: \(yagom3.name), 나이:\(yagom3.age), 신장:\(yagom3.height)")
////////
//////////대괄호를 사용하여 배열임을 표현합니다.
////////var names: Array<String> = ["yagom", "chulsoo", "younghee", "yagom"]
////////
//////////위 선언과 정확히 동일한 표현입니다. [String]은 Array<String>의 축약 표현입니다.
////////var names2: [String] = ["yagom", "chulsoo", "younghee", "yagom"]
////////
////////names == names2     //true
////////
////////var emptyArray: [Any] = [Any]()       //Any 데이터를 요소로 갖는 빈 배열을 생성합니다.
////////var emptyArray2: [Any] = Array<Any>() // 위 선언과 정확히 같은 동작을 하는 코드입니다.
////////
////////// 배열의 타입을 정확히 명시해줬다면 []만으로도 빈 배열을 생성할 수 있습니다.
////////var emptyArray3: [Any] = []
////////print(emptyArray.isEmpty)       //true
////////print(emptyArray3.isEmpty)      //true
////////print(names.count)              //4
////////
////////print(names[2])     //younghee
////////names[2] = "jenny"
////////print(names[2])     //jenny
////////print(names.contains("younghee"))       //false
////////
//////////print(names[4])     //인덱스의 범위를 벗어났기 때문에 오류가 발생합니다.
//////////
//////////names[4] = "elsa"     //인덱스의 범위를 벗어났기 때문에 오류가 발생합니다. name[4]는 선언되지 않은 값이다.
////////names.append("elsa")    //마지막에 "elsa"가 추가됩니다.
////////names.append(contentsOf: ["john","max"])    //맨 마지막에 "john"과 "max"가 추가됩니다.
////////names.insert("happy", at: 2)    //인덱스 2에 "happy"가 추가됩니다.
////////names.insert(contentsOf: ["jinhee", "minsoo"], at: 5)   //인덱스 5의 위치에 jinhee와 minsoo가 삽입됩니다.
////////
////////print(names[4])
////////print(names.firstIndex(of: "yagom"))        //Optional(0)
////////print(names.firstIndex(of: "christal"))     //nil
////////print(names.first)                          //Optional("yagom")
////////print(names.last)                           //Optional("max")
////////
////////print(names)    //["yagom", "chulsoo", "happy", "jenny", "yagom", "jinhee", "minsoo", "elsa", "john", "max"]
////////let firstItem: String = names.removeFirst() //"yagom"
////////let lastItem: String = names.removeLast()   //"max"
////////let indexZeroItem: String = names.remove(at: 0) //"chulsoo"
////////print(names)    //["happy", "jenny", "yagom", "jinhee", "minsoo", "elsa", "john"]
////////
////////
////////print(firstItem)        //yagom
////////print(lastItem)         //max
////////print(indexZeroItem)    //chulsoo
////////print(names[1...3])     //["jenny", "yagom", "jinhee"]
////////
////////print(names)        //["happy", "jenny", "yagom", "jinhee", "minsoo", "elsa", "john"]
////////names[1...3] = ["A"]       //names 배열의 1~3번 인덱스 자체를 ["A"]로 변경한다.
////////print(names)        //["happy", "A", "minsoo", "elsa", "john"]
////////
//////////typealias를 통해 조금 더 단순하게 표현해볼 수도 있습니다.
////////typealias StringIntDictionary = [String: Int]
////////
//////////키는 String,값은 Int 타입인 빈 딕셔너리를 생성합니다.
////////var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()
////////numberForName == [:]    //true
////////
//////////위 선언과 같은 표현힙니다. [String: Int]는 Dictionary<String, Int>의 축약 표현입니다.
////////var numberForName2: [String: Int] = [String: Int]()
////////
//////////위 코드와 같은 동작을 합니다.
////////var numberForName3: StringIntDictionary = StringIntDictionary()
////////
//////////딕셔너리의 키와 값 타입을 정확히 명시해줬다면 [:]만으로도 빈 딕셔너리를 생성할 수 있습니다.
////////var numberForName4: [String: Int] = [:]
////////
//////////초깃값을 주어 생성해줄 수도 있습니다.
////////var numberForName5 = ["yagom": 100, "chulsoo": 200, "jenny": 300]
////////
////////print(numberForName.isEmpty)    //true
////////print(numberForName5.isEmpty)   //false
////////print(numberForName.count)      //0
////////print(numberForName5.count)     //3
////////
////////
////////print(numberForName5["minji"])      //nil
////////print(numberForName5["chulsoo"])    //Optional(200),
////////
////////numberForName5["chulsoo"] = 150
////////print(numberForName5["chulsoo"])    //Optional(150)
////////
////////numberForName5["max"] = 999 //max라는 키로 999라는 값을 추가합니다.
////////print(numberForName5["max"])    //Optional(999)
////////
////////print(numberForName5.removeValue(forKey: "yagom"))  //Optional(100)
////////                                                    //print() 안에 연산을 넣어도 연산이 작동하는군!
///////////위에서 yagom 키에 해당하는 값이 이미 삭제되었으므로 nil이 반환됩니다.
///////////키에 해당하는 값이 없으면 기본값을 돌려주도록 할 수도 있습니다.
////////print(numberForName5.removeValue(forKey: "yagom"))  //nil
////////
////////print(numberForName5["yagom", default: 0])
////////
////////////numberForName5가 "chulsoo"라는 키 값을 가지지 않을수 있기때문에
////////////numberForName5["chulsoo"]는 Optional<Int>타입이 된다.
//////////let chulsooAge: Int = numberForName5["chulsoo"]          //컴파일 에러
//////////let chulsooAge: Int? = numberForName5["chulsoo"]         //정상 작동
//////////let yagomAge: Int = numberForName5["yagom", default: 0]  //정상 작동
////////
////////
////////
//////
//////var names: Set<String> = Set<String>()  //빈 세트 생성
//////var names2: Set<String> = []            //빈 세트 생성
//////
////////Array와 마찬가지로 대괄호를 사용합니다.
//////var names3: Set<String> = ["yagom", "chulsoo", "younghee", "yagom"]
//////
////////그렇기 때문에 타입 추론을 사용하게 되면 컴파일러는 Set가 아닌 Array로 타입을 지정합니다.
//////var numbers = [100, 200, 300]
//////print(type(of: numbers))    //Array<Int>
//////
//////print(names.isEmpty)    //true
//////print(names.count)      //0
//////print(names3.isEmpty)   //false
//////print(names3.count)     //3 - 중복된 값은 허용되지 않으므로 "yagom"은 1개만 남습니다.
//////
//////names3.insert("jenny")
//////print(names3.count)     //4
//////
//////print(names3.remove("chulsoo"))     //Optional("chulsoo")
//////print(names3.remove("john"))        //nil
//////
//////let englishClassStudents: Set<String> = ["john", "chulsoo", "yagom"]
//////let koreanClassStudents: Set<String> = ["jenny", "yagom", "chulsoo", "hana", "minsoo"]
//////
////////교집합 {"yagom, "chulsoo"}
//////let intersectSet: Set<String> = englishClassStudents.intersection(koreanClassStudents)
//////
////////여집합의 합(배타적 논리합) {"john", "jenny", "hana", "minsoo"}
//////let symmetricDiffSet: Set<String> = englishClassStudents.symmetricDifference(koreanClassStudents)
//////
////////합집합 {"hana", "john", "jenny", "yagom", "chulsoo", "minsoo"}
//////let unionSet: Set<String> = englishClassStudents.union(koreanClassStudents)
//////
////////차집합 {"john"}
//////let subtractSet: Set<String> = englishClassStudents.subtracting(koreanClassStudents)
//////
//////print(unionSet.sorted())        //["chulsoo", "hana", "jenny", "john", "minsoo", "yagom"]
//////
//////let 새: Set<String> = ["비둘기", "닭", "기러기"]
//////let 포유류: Set<String> = ["사자", "호랑이", "곰"]
//////let 동물: Set<String> = 새.union(포유류)
//////
//////print(새.isDisjoint(with: 포유류))  //서로 배타적인지(교집합이 없는지) -true
//////print(새.isSubset(of: 동물))       //새가 동물의 부분집합인지 -true
//////print(동물.isSuperset(of: 포유류))  //동물은 포유류의 전체집합인지 -true
//////print(동물.isSuperset(of: 새))     //새는 포유류의 전체집합인지 -true
//////
//////var array: [Int] = [0, 1, 2, 3, 4]
//////var set: Set<Int> = [0, 1, 2, 3, 4]
//////var dictionary: [String: Int] = ["a": 1, "b": 2, "c": 3]
//////var string: String = "string"
//////
//////print(array.randomElement())    //임의의 요소
//////print(array.shuffled())         //뒤죽박죽된 배열, 내부의 요소는 그대로 존재 [3, 4, 2, 0, 1]
//////print(array)                    //[0, 1, 2, 3, 4] array 자체가 뒤죽박죽된 것은 아니다.
//////array.shuffle()                 //array 자체를 뒤죽박죽 뒤섞기
//////print(array)                    //[2, 3, 1, 0, 4]
//////
//////dictionary.randomElement()
//////
//////
//////print(set.shuffled())           //세트를 뒤섞으면 배열로 반환해줍니다.
////////set.shuffled()                //오류 발생! 세트는 순서가 없기 떄문에 스스로 뒤섞을 수 없습니다.
//////print(dictionary.shuffled())    //딕셔너리를 뒤섞으면 (키, 값)이 쌍을 이룬 튜플의 배열로 반환해줍니다. [(key: "b", value: 2), (key: "a", value: 1), (key: "c", value: 3)]
//////print(string.shuffled())        //String도 컬렉션입니다. ["g", "r", "i", "t", "s", "n"]
//////let shuffledString: [Character] = string.shuffled()
////
////enum School: String {
////    case primary        = "유치원"
////    case elementary     = "초등학교"
////    case middle         = "중학교"
////    case high           = "고등학교"
////    case collage
////    case university
////    case graduate
////}
////
////let highEducationLevel: School = .university
////print("저의 최종학력은 \(highEducationLevel.rawValue) 졸업입니다.") //.rawValue 프로퍼티로 원시 값을 불러올 수 있습니다.
////// 저의 최종학력은 university 졸업입니다.
////print(School.elementary.rawValue)   //초등학교
////
////enum Numbers: Int {
////    case zero
////    case one
////    case two
////    case ten = 10
////    case eleven         // 원시 값이 10인 케이스 다음에 위치해 그보다 1이 큰 11의 원시 값을 갖게된다.
////    case three = 3      //3
////    case four           //4
////}
////
////Numbers.four.rawValue
////
////print("\(Numbers.zero.rawValue), \(Numbers.one.rawValue), \(Numbers.two.rawValue), \(Numbers.ten.rawValue), \(Numbers.eleven.rawValue),  \(Numbers.three.rawValue),  \(Numbers.four.rawValue),")     // 0, 1, 2, 10, 11, 3, 4
////
////
////let primary = School(rawValue: "유치원")       //.primary
////let graduate = School(rawValue: "석박사")      //nil
////
////
////print(primary?.rawValue)        //Optional("유치원")
////
////let one = Numbers(rawValue:  1) //.one
////let two = Numbers(rawValue: 3)  //.three
////let five = Numbers(rawValue: 5) //nil
////
////
////enum WeekDays: Character {
////    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
////}
////
////let today: WeekDays = .fri
////print("오늘은 \(today.rawValue)요일입니다.")        // 오늘은 금요일입니다.
////
//////enum School2 {
//////    case primary, elementary, middle, high, collage, university, graduate
//////}
//////
//////var highestEducationLevel: School = School.university
//////var highestEducationLevel2: School = .university        //타입추론은 지원되지 않음.
//////highestEducationLevel = .graduate                       //같은 타입인 School 내부의 항목으로만 값을 변경해줄 수 있습니다.
//////
////
//
////enum MainDish {
////    case pasta(taste: String)
////    case pizza(dough: String, topping: String)
////    case chicken(withSauce: Bool)
////    case rice
////}
////
////var dinner: MainDish = .pasta(taste: "cream")
////dinner = .pizza(dough: "cheese crust", topping: "bulgogi")
////dinner = .chicken(withSauce: true)
////dinner = .rice

//enum PastaTaste: CaseIterable {
//    case cream, tomato
//}
//
//enum PizzaDough: CaseIterable {
//    case cheeseCrust, thin, original
//}
//
//enum PizzaTopping: CaseIterable {
//    case pepperoni, bacon, bulgogi
//}
//
//enum MainDish: CaseIterable {
//    case pasta(taste: PastaTaste)
//    case pizza(dough: PizzaDough, topping: PizzaTopping)
//    case chicken(withSauce: Bool)
//    case rice
//
//    static var allCases: [MainDish] {
//        return PastaTaste.allCases.map(MainDish.pasta) + PizzaDough.allCases.reduce([]) { (result, dough) -> [MainDish] in result + PizzaTopping.allCases.map { (topping) -> MainDish in MainDish.pizza(dough: dough, topping: topping)
//            }
//        }
//        + [true, false].map(MainDish.chicken)
//        + [MainDish.rice]
//    }
//
//}
//
//print(MainDish.allCases.count)
//print(MainDish.allCases)


//enum School: String, CaseIterable {
//    case primary        = "유치원"
//    case elementary     = "초등학교"
//    case middle         = "중학교"
//    case high           = "고등학교"
//    case collage        = "대학"
//    case university     = "대학교"
//    @available(iOS, obsoleted: 12.0)
//    case graduate       = "대학원생"
//
//    static var allCases: [School] {
//        let all: [School] = [.primary,
//                             .elementary,
//                             .middle,
//                             .high,
//                             .collage,
//                             .university]
//
//#if os(iOS)
//        return all
//#else
//        return all + [.graduate]
//#endif
//    }
//}
//
//
//
//let allCases: [School] = School.allCases
//print(allCases)
////실행환경에 따라 다른 결과
///
///

//특정 항목에 순환 열거형 항목 명시
enum ArithmeticExperssion {
    case number(Int)
    indirect case addition(ArithmeticExperssion, ArithmeticExperssion)
    indirect case multipleication(ArithmeticExperssion, ArithmeticExperssion)
}

//열거형 전체에 순환 열거형 명시
indirect enum ArithmeticExperssion2 {
    case number(Int)
    case addition(ArithmeticExperssion2, ArithmeticExperssion2)
    case multipleication(ArithmeticExperssion2, ArithmeticExperssion2)
}

let five = ArithmeticExperssion.number(5)
let four = ArithmeticExperssion.number(4)
let sum = ArithmeticExperssion.addition(five, four)
let final = ArithmeticExperssion.multipleication(sum, ArithmeticExperssion.number(2))

func evaluate(_ expression: ArithmeticExperssion) -> Int {
    switch expression {
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multipleication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

let result: Int = evaluate(final)
print("(5 + 4) * 2 = \(result)")      //(5 + 4) * 2 = 18

enum Condition: Comparable {
    case terrible
    case bad
    case good
    case great
}

let myCondition: Condition = Condition.great
let yourCondition: Condition = Condition.bad

if myCondition >= yourCondition {       //제 상태가 더 좋군요.
    print("제 상태가 더 좋군요.")
} else {
    print("당신의 상태가 더 좋아요.")
}

enum Device: Comparable {
    case iPhone(version: String)
    case iPad(version: String)
    case macBook
    case iMac
}

var devices: [Device] = []
devices.append(Device.iMac)
devices.append(Device.iPhone(version: "14.3"))
devices.append(Device.iPhone(version: "6.1"))
devices.append(Device.iPad(version: "10.3"))
devices.append(Device.macBook)

let sortedDevices: [Device] = devices.sorted()
print(sortedDevices)
//[__lldb_expr_324.Device.iPhone(version: "14.3"), __lldb_expr_324.Device.iPhone(version: "6.1"), __lldb_expr_324.Device.iPad(version: "10.3"), __lldb_expr_324.Device.macBook, __lldb_expr_324.Device.iMac]

