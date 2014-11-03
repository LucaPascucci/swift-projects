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


let test = Square(sideLenght: 5.2, name: "My Square")
println("A square with \(test.area()) of area")
println(test.simpleDescription())
