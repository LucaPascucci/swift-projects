//
//  main.swift
//  ApprendereSwift
//
//  Created by Luca Pascucci on 03/11/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import Foundation

// Variabile
var myVariable = 42
myVariable = 50

// Costante
let myConstant = 42

// Costanti implicite ed esplicite
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

// Conversione costanti
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

// Conversione costanti 2
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of friut."

// Dizionari
let emptyDictionary = [String : Float]()
var occupations = [
    "Luca": "Captain",
    "Filippo": "Developer",
]
occupations["Jayne"] = "Public Relations"
// Svuotare dizionario
occupations = [:]

// Array
let emptyArray = [String]()
var shoppingList = ["water","blue paint", "catfish", "tulips"]
shoppingList[3] = "jam"
//Svuotare l'array
shoppingList = []

//Ciclo for
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }else{
        teamScore += 1
    }
}

//Ciclo for con dizionario
let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25]
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
println(largest)

//while e do_while
var n = 2
while n < 100 {
    n = n * 2
}

var m = 2
do {
    m = m * 2
} while m < 100

// variabile opzionale (può contenere anche il valore nil = null0)
var optionalString: String? = "Hello"
optionalString = nil

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
println(greeting) //stampa interessante!

//Switch_case
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
        println(vegetableComment)
    case "cucumber", "watercress":
        let vegetableComment = "Add some raisins and make ants on a log."
        println(vegetableComment)
    //let assegna il valore che matcha ad x
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
        println(vegetableComment)
    default:
        let vegetableComment = "Everything tastes good in soup."
        println(vegetableComment)
}

//loop
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}

var secondForLoop = 0
for var i = 0; i < 4; i++ {
    secondForLoop += i
}

//metodo per prendere la data odierna
var date = NSDate()
let formatter = NSDateFormatter()
formatter.dateStyle = .FullStyle

println(greet("Luca and Filippo", "\(formatter.stringFromDate(date))"))

let statistics = calculateStatistic([5,3,100,3,9])
println(statistics.sum)
println(statistics.0)


println(sumOf())
println(sumOf(42,597,12))

let test = Square(sideLenght: 5.2, name: "My Square")
println("A square with \(test.area()) of area")
println(test.simpleDescription())
