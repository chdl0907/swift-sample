
var myAge = 20
var yourAge:Int
let myName:String

yourAge=20
myName="20초이"

yourAge=30

var myInt:Int=987645321456789456

var ssInt:Int8=127
var sInt:Int16=32767
var mInt:Int32=1234567
var lInt:Int64=1234567891234567891

print(myInt)

var UssInt:UInt=9876453214567894561
var myFloat:Float=1.123456789
var myDouble:Double=1.123456789012345
var tmpFloat:Float

tmpFloat=1.987654321

print(tmpFloat)


var myChar:Character="d"
var myString:String="Hello, World!"

myString.characters
myString.hasPrefix("Hello")


var sAge:Int
sAge=30

var age=30
type(of: sAge)

var name="최현미"
type(of: name)

var isEnabled = true
type(of: isEnabled)

var isDouble = 1.23456
type(of:isDouble)


var tage=30
var tname="20"

//var result1 = (String)tage + tname

var userName:String="홍길동"
var userAge:Int=20
var welcomMsg:String="\(userAge)살 \(userName)님 환영합니다."

print(welcomMsg)



for i in 1..<10 {
    print(i)
}

for i in 1..<4 {
    print(i)
}

for _ in 1...5 {
    print("Hello!")
}

for i in 1..<10 {
    print("2*\(i)=\(2*i)")
}

for i in 2..<10 {
    for j in 1..<10 {
        print("\(i)*\(j)=\(i*j)")
    }
}

var a = 1
while a < 10 {
    a=a+1
    print("A = \(a)")
}


var b=1
repeat {
    b=b+1
    print("B=\(b)")
} while b<10

var a1=10
var b1=20

if a1<b1 {
    print("a1는 b1보다 크다.")
}


var a2=10
var b2=20

if b2 > a2 {
    print("b2는 a2보다 크다")
} else {
    print("b2는 a2보다 작다")
}

var a3=20
var b3=20

if a3 > b3 {
    print("a3는 b3보다 크다")
} else if a3 < b3{
    print("a3는 b3보다 작다")
} else {
    print("a3는 b3와 같다")
}

var name2="홍길동"
var age2=33

if name2=="홍길동" {
}


let keyboard="해피해킹"

switch keyboard{
case "해피해킹", "리얼포스" :
    print("비싼 키보드")
default :
    print("인식불가")
}

var p1=("홍길동", 23)

switch p1{
case let (name, 23) :
    print("23살의 \(name)입니다.")
default :
    print("인식불가")
}

var height = 170
switch height{
case 0 ..< 170:
    print("170미만")
case 170 ..< 180:
    print("180미만")
default:
    print("인식불가")
}

var p2=("고길동", 44)

switch p2 {
case let (name, age) where age >= 40:
    print("40대 \(name)님.")
case let (name, age) where age >= 30:
    print("30대 \(name)님.")
default:
    print("인식불가")
    }