import UIKit

var greeting = "Hello, playground"

print("Hi",10,12.25)
print(greeting)

//String interpolation
//    \(varibaleName)
var language = "Swift"
print("I dont like \(language)")


var age = 23
print("You are \(age) years old and in another \(age) years, you will be \(age * 2)")

var name = "John"
var grade = 89
//Hello, Ajay!
print("Hello, \(name)! Your grade is \(grade)")

print("""
Hello.
World!
""")

print ("Hello All,\rWelcome to Swift programming")

//let is constant
//explicit declaration the dataType
let  welcomeMessage : String = "Hello!"
   print(welcomeMessage , "All")


print("Welcome to Swift Programming")
print("Fall 2021")
print("*************")
print("Welcome to Swift Programming" , terminator : "-" )
print("Fall 2021")


var name1 = "John"
var grade1 = 89
//Hello, Ajay!
print("Hello, \(name1)! Your grade is \(grade1)", terminator: " ")
print("in iOS course")


print("The list of numbers are", terminator: ": ")
print(1,2,3,4,5,6)
print("The new pattern is", terminator: ": ")
print(1,2,3,4,5,6, separator: "-")


var mobileBrand = "Apple"
mobileBrand = "Samsung"
print(mobileBrand)

let pi = 3.14
//pi = 3 note: change 'let' to 'var' to make it mutable
//let pi = 3.14
print(pi)




