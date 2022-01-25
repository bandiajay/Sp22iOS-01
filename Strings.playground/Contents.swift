import UIKit

var greeting = "Hello, playground"

var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

//Evaluate each of the following expressions.
fact.count

fact += ", it has a better memory management"

dev.append(" by Apple")

author.lowercased()

author.uppercased()

author[author.startIndex]

author[author.index(before: author.endIndex)]

dev[dev.startIndex]

dev[dev.index(before: dev.endIndex)]

author[author.index(after: author.startIndex)]

author[author.index(author.startIndex,offsetBy: 5)]

author[author.index(author.endIndex,offsetBy: -6)]

fact[fact.index(fact.endIndex,offsetBy: -4)]



var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

//Find out the expected results for each of the following

if clothes.hasPrefix("Socks") {
    print("The first item in clothes is socks")
}else{
    print("socks is not the first item in clothes")
}

print(foodItems.split(separator: ","))

//Note: Split() returns the longest possible subsequences of the collection, in order, around elements equal to the given element.

if clothes.contains(",") {
    print("Clothes contains more than one item")
}else{
    print("Clothes contain only one item")
}

foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]


shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex]

clothes.remove(at: clothes.firstIndex(of: "T")!)
print(clothes)

clothes.remove(at: clothes.firstIndex(of: "-")!)

print("\(shoppingList), \(clothes)")
    
clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)

var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)

print(shoppingList[..<firstIndexOfR])
