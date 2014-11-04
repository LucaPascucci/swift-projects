//
//  Counter.swift
//  ApprendereSwift
//
//  Created by Luca Pascucci on 04/11/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import Foundation

class Counter {
    
    var count: Int = 0
    
    //funzione con una variabile con due nomi. il secondo nome può essere utilizzato "solo" dentro la funzione
    func incrementBy (amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}