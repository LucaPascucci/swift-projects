//
//  NamedShape.swift
//  ApprendereSwift
//
//  Created by Luca Pascucci on 03/11/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import Foundation

class NamedShape {
    
    var numberOfSides: Int = 0
    
    var name: String
    
    //costruttore
    init(name: String){
        
        self.name = name
    }
    
    func simpleDescription() -> String {
        
        return "A shape with \(numberOfSides) sides."
    }
}