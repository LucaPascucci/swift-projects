//
//  Shape.swift
//  ApprendereSwift
//
//  Created by Luca Pascucci on 04/11/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import Foundation

class Shape {
    var numberOfSides = 0
    
    func simpleDescription() -> String{
        return "A shape with \(numberOfSides) sides."
    }
}