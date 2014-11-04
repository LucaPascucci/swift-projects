//
//  EquilateralTriangle.swift
//  ApprendereSwift
//
//  Created by Luca Pascucci on 04/11/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import Foundation

class EquilateralTriangle: NamedShape {
    var sideLenght: Double = 0.0
    
    init(sideLenght: Double, name: String){
        self.sideLenght = sideLenght
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get { //valore che ritorna quando chiamo la variabile perimeter (è come un getter)
            return 3.0 * sideLenght
        }
        set { //valore che imposta a sideLenght quando setto il perimetro (è come un setter
            sideLenght = newValue / 3
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of lenght \(sideLenght)"
    }
}