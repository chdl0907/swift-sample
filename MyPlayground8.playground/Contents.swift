//: Playground - noun: a place where people can play
/*
struct Point{
    var x:Int?
    var y:Int
    
    /*init(newX:Int, newY:Int){
        self.x=newX
        self.y=newY
    }
    
    mutating func newPoint(x:Int, y:Int){
        self.x=x
        self.y=y
    }*/
}


struct Size{
    var width:Int?
    var height:Int
}

struct Frame{
    var point:Point
    var size:Size?
}


class Shape{
    var frame:Frame?
    
    init(frame:Frame?){
        self.frame=frame
    }
}


var frame=Frame(point:Point(x:10, y:10), size:Size(width:100, height:100))
var shape=Shape(frame: frame)

if let oFrame=shape.frame{
    if let oSize=oFrame.size{
        if let oWidth=oSize.width{
            print(oSize)
        }
    }
}

// 위에 있는 if let구문과 동일한 구분
let uWidth=shape.frame?.size?.width

//shape.frame.point.x
//shape.frame.point.y
*/
///////////////////////////////////////////////////////////////////////////
/*
class Shape{
    var x:Int
    var y:Int
    init(x:Int, y:Int){
        self.x=x
        self.y=y
    }
    convenience init(x:Int){
        self.init(x: x, y:0)
    }
}

class Rectangle:Shape{
    var width:Int
    var height:Int
    init(x:Int, y:Int, width:Int, height:Int){
        self.width=width
        self.height=height
        super.init(x: x, y: y)
    }
    
    convenience init(x:Int, y:Int, width:Int) {
        self.init(x: x, y: y, width: width, height: 0)
    }
}

//자식 convenience init-> 자식 init -> 부모 convenience init->부모 init 순서로호출함
*/
///////////////////////////////////////////////////////////////////////

//protocol
import Foundation

protocol PersonBDelegate{
    func send()
}


//class 상속시->  상속받을클래스명,프로토콜순으로선언
class PersonA:PersonBDelegate {
    init(){
        let personB=PersonB()
        personB.delegate=self
        personB.callMe()
    }
    func send(){
        print("Recived")
    }
}

class PersonB{
    var delegate:PersonBDelegate?
    func callMe(){
        delegate?.send()
    }
}

let p1=PersonA()

protocol someProtocol{
    var settableProperty:String{get set}
    var notNeedToBeSettableProperty:String{get}
}

class Message:Sendable{
    var sender:String
    var from:String{
        return self.sender
    }
    var to:String
    init(sender:String, receiver:String){
        self.sender=sender
        self.to=receiver
    }
}

class Mail:Sendable{
    var from:String
    var to:String
    init(sender:String, receiver:String){
        self.from=sender
        self.to=receiver
    }
}