//: Playground - noun: a place where people can play

import Foundation

class ClassA{
    var classB:ClassB?
    func createClassB()->ClassB{

        let classB=ClassB(classA: self)
        self.classB=classB
        return classB
    }
}

class ClassB{
    var classA:ClassA?
    
    init(classA:ClassA){
        self.classA=classA
    }
}

var classA=ClassA()
classA.createClassB()