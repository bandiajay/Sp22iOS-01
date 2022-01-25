import UIKit

var greeting = "Hello, playground"

//Loops:
// value from  an array is  retrieved using the index as array[index].

// Range Operator is a shortcut for expressing range of values.

// we represent range operator using (a...b) the values a and b are bounds and they are inclusive.This is closed range operator.

// To exclude the upper bound in a range we use Half-range operator (a..<b).


var number:Int = 5
for index in 1...5 {
    print("\(index) * \(number) = \(index*number)")
}

var totalNumbers = 100
var sum:Int = 0
for number in 1...totalNumbers {
    sum += number
    //sum = sum + number
}
print("The sum of first \(totalNumbers) is \(sum)")

var coreLang = ["Java","Swift","Javascript","ASP.net","SQL"]
//In Swift Array is declared using var arrayName=[]
for index in 0..<coreLang.count {
    print("\(coreLang[index])")
}

var totalSum = 10
for val in 1...totalSum {
    if (val%2 == 0) {
        print("\(val)",terminator:",")
    }
}
print(" are all even numbers")

var member=true
var scratchCard=10
var count=0
for attempt in 1..<scratchCard {
    count+=1
    if member {
        if count>3 {
            print("You won \(scratchCard-2)$")
            count=0
            break
        }
        
    }else{
        if(count>8){
            print("You got \(scratchCard-8)$")
        }
        
    }
}

//while
var prodNumber:Int = 6
var product:Int = 1
print("The product of first \(prodNumber) numbers is",terminator:" ")

while prodNumber>0 {
    product*=prodNumber
    prodNumber-=1
}
print(product)



var rangeValue:Int = 30
while rangeValue >= 1 {
    if rangeValue%3 == 0 {
        print("\(rangeValue)",terminator:" ")
    }
    rangeValue-=1
}

print()

var number1 = 1
repeat {
    print(number1,terminator:" ")
    number1 += 1
} while number1 <= 10


var number2 = 3
repeat {
    print("Hello World!!")
    number2+=1
} while (number2 <= 2)

    

var a=0
var b=10

while (b-2 > 0){
    b-=2
    while (a+2 < 10){
        a+=2
        if a==b {
            continue
        }
        print("(\(a),\(b) )",terminator:"")
    }
}


var d = 100;
while( d > 50 )
{
    d = d - 30
}
print(d)
if( d > 70 ){
    d-=20;
    
}
else{
    d+=35;
}
print(d);



