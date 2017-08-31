//: Playground - noun: a place where people can play

import Foundation

func makeIncrementer(forIncrement amount:Int) -> (()->Int){
    var runningTotal=0
    
    func incrementer() -> Int{
    runningTotal+=amount
    return runningTotal
    }
    
    return incrementer
}

let incrementByTwo:(()->Int)=makeIncrementer(forIncrement: 2)

let first:Int=incrementByTwo()
