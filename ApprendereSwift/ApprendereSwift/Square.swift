//
//  Square.swift
//  ApprendereSwift
//
//  Created by Luca Pascucci on 03/11/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import Foundation

class Square: NamedShape {
    
    var sideLenght: Double
    
    //Costruttore
    init(sideLenght: Double, name: String){
        
        self.sideLenght = sideLenght
        super.init(name: name)
        
        numberOfSides = 4
    }
    
    func area() -> Double {
        
        let area = sideLenght * sideLenght
        
        return area
    }
    
    override func simpleDescription() -> String {
        
        return "A square with sides of lenght \(sideLenght)."
    }
    
}