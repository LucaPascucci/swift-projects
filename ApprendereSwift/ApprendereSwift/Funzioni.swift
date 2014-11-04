//
//  Funzioni.swift
//  ApprendereSwift
//
//  Created by Luca Pascucci on 03/11/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import Foundation

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

//Funzione con tre valori di ritorno
func calculateStatistic(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[1]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }else if score < min {
            min = score
        }
        sum += score
    }
    return (min,max,sum)
}

//Funzione sommante di n variabili (non vuole un Array)
func sumOf(numbers: Int...) -> Int{
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

//Funzioni innestate che modificano una variabile in comune
func returnFifteen() -> Int {
    var y = 10
    func add(){
        y += 5
    }
    return y
}

//Funzione che ritorna una funzione
func makeIncrement() -> (Int -> Int){
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne //funzione di ritorno
}

//Funzione che prende un'altra funzione in ingresso
func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}
//Funzione in ingresso
func lessThanTen (number: Int) -> Bool{
    return number < 10
}