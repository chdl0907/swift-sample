// 2일차교육

var name:String
var age:Int

name="홍길동"
age=30

var name2:String
var age2:Int

name2="고길동"
age2=23

var name3:String
var age3:Int

name3="김철수"
age3=50

// 구조체
// 상관관계가 없는 데이터끼리 하나로 묶어서 관리하고 싶은 경우 사용(동작)
struct Size{
    var width:Float
    var height:Float
    var x:Float

    func description(){
        print("Width:\(self.width), Height:\(self.height)")
    }
}

//var size = Size(width:100, height: 100)
//var newSize=size

//size.width
//size.height
//size.description()

var mySize=Size(width: 100, height: 100, x: 10)
mySize.width=200
mySize.height=200
mySize.description()

var newSize:Size
newSize = Size(width: 10, height: 10, x: 5)
newSize.width
newSize.height
newSize.description()

var mySize1=Size(width: 10, height: 10, x: 2)

// 클래스
// 초기화방법 제공하지 않으므로 직접 초기화해줘야함
/* 구조체 vs 클래스 ->
 (1) 구조체의 경우 인스턴스의 값을 변경하는 것에 제약/ 클래스의 경우 인스턴트 객체의 주소를 참조하므로 값을 변경 할 수 있음
 (2) 구조체의 경우 상속x */
class Person{
    var name:String
    var email:String // 초기화할수 없는경우(값이 있을수도 있고 없을수도 있는경우 Opntional type(?)으로 정의)
    var age:Int
    var gender:String
    
    // 인스턴트 생성시 초기화하도록 하려면 init함수 선언
    init(name:String, email:String, age:Int, gender:String){
        self.name=name
        self.email=email
        self.age=age
        self.gender=gender
    }
    
    func run() {
         print("run~")
    }
    
}

var person1 = Person(name: "홍길동", email: "hoong33@gmail.com", age: 20, gender: "M")
let person2 = Person(name: "김철수", email: "kim@gmail.com", age: 30, gender: "M")
person2.age=44
dump(person2)
//person2=person1 인스턴트의 값을 변경하는 것은 가능하나 인스턴스자체를 변경하는것은 불가하다


// apple에서 만들어놓은 framework
import Foundation

struct Person1{
    // 저장 프로퍼티
    var firstName:String
    var lastName:String
    
    //연산 프로퍼티 : 값을 저장할 수 없음, 연산 프로퍼티를 통해 값을 할당하여 저장 프로퍼티에 값을 저장
    var fullName:String{
        get{// 값을 읽을때
            return firstName + " " + lastName
        }
        set { // 값을 던질때
            let index = newValue.index(newValue.startIndex, offsetBy:1)
            self.lastName = newValue.substring(to: index)
            self.firstName = newValue.substring(from: index)
        }
    }
}

var p1=Person1(firstName: "길동", lastName: "홍")
p1.firstName
p1.lastName
p1.fullName
p1.fullName="김민수"
p1.fullName


struct Person3{
    var age:Int?{
        willSet {
            if newValue! > 18 {
                print("성인입니다.")
            }else{
                print("미성년자입니다.")
            }
        }
        didSet {
            if oldValue! > 18 {
                print("## 성인입니다. ")
            }else{
                print("## 미성년자입니다. ")
            }
        }
    }
}


var p3=Person3(age: 30)
p3.age


struct Size1{
    static var maxWidth:Int=800
    static var maxHeight:Int=600
    
    static var maxPixel:Int{
        return maxWidth*maxHeight
    }
}

var max=Size1.maxPixel

class Grade{
    static let max:Float=100
    
    //클래스의 연산 프로퍼티에만 가능. 상속가능
    //연산 프로퍼티에는 let 사용불가.
    class var min: Float {
        return max*0.2
    }
}

let maxGrade=Grade.max
let minGrade=Grade.min


// method 프로퍼티

class Person4{
    var name:String!
    var age:Int!
    
    // 인스턴스
    func jump(){
        if self.age > 30 {
            print("\(self.name)님 30cm점프!")
        }
        else{
            
            print("\(self.name)님 1m점프!")
        }
    }
    
    func run(){
        if self.age > 30 {
            print("\(self.name)님 느리게 달림")
        }
        else{
            
            print("\(self.name)님 빠르게 달림")
        }
    }
    
    static let maxAge=100
    
    // type 메소드
    class func calcBMI(height:Int, weight:Int) -> String {
        let result = Float(weight) / (Float(height*height) * 0.0001)
        let returnMsg:String
        
        print(result)
        
        if result >= 24.9{
            returnMsg = "비만"
        }else if result >= 22.9 && result <= 24.9 {
            returnMsg = "과체중"
        }else if result >= 18.5 && result <= 22.9 {
            returnMsg = "정상"
        }else if result < 18.5 {
            returnMsg = "저체중"
        }else{
            returnMsg = "에러"
        }
        return returnMsg
    }
}

let p = Person4()
p.age=30
p.name="홍길동"

p.run()
p.jump()

let bmi=Person4.calcBMI(height: 170, weight: 72)
print(bmi)


