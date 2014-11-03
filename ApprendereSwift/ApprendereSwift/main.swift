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

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70


let test = Square(sideLenght: 5.2, name: "My Square")
println("A square with \(test.area()) of area")
println(test.simpleDescription())
