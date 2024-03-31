import Cocoa

var errorCodeString: String?
errorCodeString = "404"
let erroroptional = errorCodeString          // errorOptional은 옵셔널 스트링타입이된다.(?)


if erroroptional != nil {
    let theError = errorCodeString!
    print(theError)
}

if let theError = errorCodeString {          // errorCodeString이 초기화되었을때만 실행된다. theError는 옵셔널 타입이 아니다. 옵셔널 바인딩은 옵셔널에 값이 있는지 판단할 수 있는 패턴.
    if let errorCodeInteger = Int(theError) {
        print("\(theError): \(errorCodeInteger)")
    }
}


if let theError = errorCodeString, let errorCodeInteger = Int(theError),
    errorCodeInteger == 404 {
    print("\(theError): \(errorCodeInteger)")
}

var errorCodeString1: String! = nil              //암묵적 언래핑된 옵셔널의 용도 불분명, 옵셔널이 가지는 효용성?
//let anotherErrorCodeString1: String = errorCodeString1
let yetAnotherErrorCodeSrting1 = errorCodeString1

var errorCodeString2: String?        //옵셔녈 체이닝
errorCodeString2 = "404"
var errorDescription: String?
if let theError = errorCodeString2, let errorCodeInteger = Int(theError),
   errorCodeInteger == 404 {
    errorDescription = "\(errorCodeInteger + 200): resourse was not found."
} //else { errorDescription = ""}

var upCaseErrorDescription = errorDescription?.uppercased()     //
errorDescription

upCaseErrorDescription?.append(" PLEASE TRY AGAIN")
upCaseErrorDescription

