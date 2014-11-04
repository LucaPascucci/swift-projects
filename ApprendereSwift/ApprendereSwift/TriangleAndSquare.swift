//
//  TriangleAndSquare.swift
//  ApprendereSwift
//
//  Created by Luca Pascucci on 04/11/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import Foundation

class ​TriangleAndSquare​ {

    var triangle: EquilateralTriangle {
        willSet{
            square.sideLenght = newValue.sideLenght
        }
    }
    
    var square: Square{
        willSet{
            triangle.sideLenght = newValue.sideLenght
        }
    }
    
    init(size: Double, name: String){
        square = Square(sideLenght: size, name: name)
        triangle = EquilateralTriangle(sideLenght: size, name: name)
    }
}