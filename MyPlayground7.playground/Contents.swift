//: Playground - noun: a place where people can play
/*
class Person{
    var name:String
    private var age:Int
    var phoneNumber:String?
    var weight:Int=0{
        willSet {
            print("현재 값: \(self.weight) 새로운 값: \(newValue)")
        }
        didSet {
            print("이전 값: \(oldValue) 현재 값: \(self.weight)")
        }
    }
    
    var koreanAge:Int{
        get{
            return self.age+1
        }
        
        set{
            self.age=newValue-1
        }
    }
    
    init(name:String, age:Int, phoneNumber:String?){
        self.name=name
        self.age=age
        self.phoneNumber=phoneNumber
    }
    
    func walk(){
        print("Walk")
    }
}

let p1=Person(name: "홍길동", age: 21, phoneNumber: nil)*/

/*
class Shape{
    var x:Float
    var y:Float
    
    
    init(x:Float, y:Float){
        self.x=x
        self.y=y
    }
}

class Rectangle:Shape{
    var width:Float
    var height:Float
    
    init(x:Float, y:Float, width:Float, height:Float){
        self.width=width
        self.height=height
        super.init(x: x, y: y)
    }
    
    override func draw(){
        super.draw()
        print("New Draw")
    }
}

let shape=Shape(x: 10, y: 10)
let rectangle=Rectangle(x: 20, y: 20, width: 200, height: 200)
shape.draw()
rectangle.draw()*/

/*
// convenience initialize
class Shape{
    var x:Float
    var y:Float
    var width:Float
    var height:Float
    
    
    init(x:Float, y:Float, width:Float, height:Float){
        self.x=x
        self.y=y
        self.width=width
        self.height=height
    }
    
    convenience init(x:Float, y:Float){
        self.init(x: x, y: y, width: 0, height: 0)
    }
}
*/

/*
//잘못된 initialize
class Person{
    let name:String
    var age:Int?
    
    init?(name:String){
        if name.isEmpty{
            return nil
        }
        self.name=name
    }
}

init?(name:String, age:Int){
    if name.isEmpty || age < 0 {
        return nill
    }
    self.name=name
    self.age=age
}

let yagom:Person?=Person(name:"yagon", age:99)

if let person:Person=yagom{
    print(person.name)
}else{
    print("Person wasn't initialized")
}
*/

// 함수를 전달해서 초기화
struct Student{
    var name:String?
    var number:Int?
}

class SchoolClass{
    var students:[Student]={
        var arr:[Student]=[Student]()
        
        for num in 1...15{
            var student:Student=Student(name:nil, number:num)
            arr.append(student)
        }
        return arr
    }()
}

let myClass:SchoolClass=SchoolClass()
print(myClass.students.count)

