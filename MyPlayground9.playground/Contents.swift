//: Playground - noun: a place where people can play

import Foundation

@objc protocol Moveable{
    func walk()
    @objc optional func fly()
}

class Tiger:NSObject, Moveable{
    func walk(){
        print("Tiger")
    }

}

class Bird:NSObject, Moveable{
    func walk(){
        print("Bird walks")
    }
    func fly(){
        print("fly")
    }
}

let tiger:Tiger=Tiger()
let bird:Bird=Bird()

tiger.walk()
bird.fly()

var moveableInstance:Moveable=tiger
moveableInstance.fly?()

moveableInstance=bird
moveableInstance.fly?()
/*
/////////////////////////////////////////
class Coffe{
    var name:String=" "
}

class Americano:Coffe{
    var iced:Bool=false
}

var coffee=Coffe()
coffee=Americano()
var americano=Americano()
//americano=Coffe()

class Named{
    var tt:String=" "
}

class Latte:Named{
    var milk:Bool=false
    func fly(){
        print("Fly")
    }
}

var latte:Named=Latte()
latte.fly()

func testMethod(val:String)->String{
    var result:String=val
    return result
}

*/

func swapTwoInts(_ a:inout Int, _ b:inout Int){
    let temporaryA:Int=a
    a=b
    b=temporaryA

}

func swapTwoValues<T>(_ a:inout T, _ b:inout T){
    let temporaryA: T = a
    a=b
    b=temporaryA
}

var numberOne:Int=5
var numberTwo:Int=10

swapTwoInts(&numberOne, &numberTwo)
swapTwoValues(&numberOne, &numberTwo)
print("\(numberOne), \(numberTwo)")


var stringOne:String="A"
var stringTwo:String="B"

swapTwoValues(&stringOne,&stringTwo)
print("\(stringOne), \(stringTwo)")




import Foundation

struct IntStack{
    var items=[Int]()
    mutating func push(_ item:Int){
        items.append(item)
    }
    mutating func pop()->Int{
        return items.removeLast()
    }
}

var integerStack:IntStack=IntStack()

integerStack.push(3)
print(integerStack.items)