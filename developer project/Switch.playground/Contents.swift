import Cocoa



var statusCode: Int = 505
var errorString: String = "The requset failed:"

switch statusCode {
case 100, 101:
    errorString += " Information, \(statusCode)"

case 204:
    errorString = "\(statusCode) is not a known error code."
    
case 300...307:
    errorString += " Redirection, \(statusCode)."
    
case 400...417:
    errorString += " Client error, \(statusCode)."
    
case 500...505:
    errorString += " Server error, \(statusCode)."
    
    fallthrough
    
case statusCode where (200 <= statusCode && statusCode < 300) || statusCode > 505 :
    errorString += "\(statusCode) is not a known error code."
    
default:
     errorString += "none."
    
}

let error = (code: statusCode,error: errorString)
error.0
error.1
error.code
error.error

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("No items found.")
case (404, _):
    print("First item not found.")
case (_, 404):
    print("Second item not found.")
default:
    print("All items found.")
}


print(errorString)
print(error)
print(errorCodes)

let age = 24
if case 18...35 = age ,(21 <= age) && ( age < 30 || age > 30) {
    print("Cool demographic")
}

var point = (x: 1, y: 4)
switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
    
case let q2 where (point.x < 0 ) && (point.y > 0) :
    print("\(q2) is in quadrant 2")
    
case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) is in quadrant 3")
    
case let q4 where (point.x > 0) && (point.y < 0):
    print("\(q4) is in quadrant 4")
    
case (_, 0):
    print("\(point) sits on the x-axis")

case (0, _):
    print("\(point) sits on the y-axis")
    
default:
    print("Case not covered.")
}

let number = -3
switch number {
case 1...Int.max:
    print("+")
case Int.min...(-1):
    print("-")
default:
    print("0")
}
