func 정답생성기(number: Int) -> [Int] {
    var answer: [Int] = []
    while answer.count < number {
        answer.append(Int.random(in: 1...9))
    }
    return answer
}


var life = 9
let choice: Set<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let correctAnswer = 정답생성기(number: 3)
var playerAnswer: [Int] = []
for ball in 1...correctAnswer.count {
    playerAnswer.append(player[ball])                   //가장 큰 함수에서 값을 가져와야함.
}

func 판정(playerAnswer: [Int]) -> [String] {
    life -= 1
    var strike = 0
    var ball = 0
    for checkNumber in 1...3 {
        if playerAnswer[checkNumber] == correctAnswer[checkNumber] {
            strike += 1
        } else if correctAnswer.contains(playerAnswer[checkNumber]) {
            ball += 1
        }
    }
    return ["입력: ", "\(strike)스트라이크 \(ball)볼", "남은 기회: \(life)"]
}


func 규칙검사_후_동작(playerAnswer: [Int]) -> [String] {
    guard choice.contains(first) && choice.contains(second) && choice.contains(third) else {
        return ["입력이 잘못되었습니다."]
    }
    guard (first != second) && (second != third) && (third != first) else {
        return ["중복 숫자는 허용하지 않습니다."]
    }
    return 판정(playerAnswer: <#T##[Int]#>)
}






print(정답생성기(number: 3))
print(정답생성기(number: 3))
print(정답생성기(number: 3))
print(정답생성기(number: 3))
print(정답생성기(number: 3))
print(정답생성기(number: 3))
