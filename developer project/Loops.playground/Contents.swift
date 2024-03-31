import Cocoa

var myFirstInt: Int = 0

for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
}

for i in 1...100 {
    if i % 3 == 0 {
        print(i)}
}

var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

var shields1 = 3
repeat {
    // 발사!
    print("Fire blasters!")
    shields1 -= 1
} while shields1 > 0

var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonDestroyed = 0
while shields > 0 {
    
    if spaceDemonDestroyed == 5 {
        print("You beat the game!")
        break
    }
    
    if blastersOverheating {
        print("Blasters are overheat! Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    
    //발사!
    print("Fire blasters!")
    
    blasterFireCount += 1
    spaceDemonDestroyed += 1
}

var int1 = 0

for _ in 0...100 {       //루프문으로 구현
    var fizzbuzz: String = ""
    

    
    if int1 % 3 == 0 {
        fizzbuzz += "FIZZ "
    }
    
    if int1 % 5 == 0 {
        fizzbuzz += "BUZZ"
    }
    
    if fizzbuzz == ""{
        print("\(int1)")
    } else { print(fizzbuzz)
    }
        
    int1 += 1
}

var int2 = 1 // if/else로 구현

if ((int2 % 3) == 0) && ((int2 % 5) == 0) {
        print("Fizz Buzz")}  else if (int2 % 3) == 0 {
            print("Fizz")} else if (int2 % 5) == 0 {
                print("Buzz")} else {print(int2)
                }



var int3 = 1 //switch로 구현

var fizzbuzz = (int3 % 3,int3 % 5)

switch fizzbuzz{
case (0,0): 
    print("Fizz Buzz")
    
case (0,_): 
    print("Fizz")
    
case (_,0):
    print("Buzz")
    
default:
    print(int3)
}
