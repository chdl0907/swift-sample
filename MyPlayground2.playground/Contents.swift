let anyVal=("홍길동", 23, 170.5, "010-555-5555")

anyVal.0
anyVal.1
anyVal.2
anyVal.3


let person1:(String, Int, String)=("김철수", 22, "010-555-5555")

let (name, age, phoneNumber)=person1
name
age
phoneNumber


func getUserInfo() -> (String, Int, String) {
    return("고길동", 40, "010-555-5555")
}


var arr1:Array<String>
var arr2:[String]

arr1 = Array()
arr1 = Array<String>()

arr2 = [String]()
arr2 = []

var arr3 = Array<String>()
var arr4 = [String]()

var fruits = ["사과", "딸기", "바나나"]

print("과일의 수는 \(fruits.count)개 입니다.")
fruits.append("수박")
print("과일의 수는 \(fruits.count)개 입니다.")

fruits.insert("망고", at: fruits.count)
fruits.append(contentsOf: ["메론", "복숭아"])

for fruit in fruits {
    print(fruits)
}

if fruits.isEmpty {
    print("과일이 없습니다.")
}


fruits[0]="%%%%%"
fruits[1...2]=["####","$$$$"]
//fruits
fruits[4...6]=["----"]
fruits

print(fruits)

/*Dictionary*/

var dict1:Dictionary<String, Int>
var dict2:[String:AnyObject]

dict1 = Dictionary()
dict1 = Dictionary<String, Int>()
dict2 = [String:AnyObject]()
dict2 = [:]
type(of: dict2)

var person =  ["name":"홍길동", "age":"23", "phoneNumber":"010-555-5555"]

var color = [String:Int]()
color["red"] = 23
color["green"] = 255
color["blue"] = 16

var colorArr = [Int]()
colorArr.append(23)
colorArr.append(255)
colorArr.append(16)

print(color["red"]!)
print(colorArr[0])

/* Dictionary vs Array */


if color.isEmpty {
    print("빈 딕셔너리입니다.")
}

print(color)
/* 딕셔너리 값 변경 */
color["red"] = 166
color.updateValue(122, forKey: "blue")
print(color)

/* 딕셔너리 값 추가 */
color.updateValue(50, forKey: "alpha")
print(color)

/* 딕셔너리 값 삭제 */
color["alpha"] = nil
print(color)
if let removed = color.removeValue(forKey: "red"){
    print("\(removed) 삭제됨.")
}

print(color)

for (key, value) in color {
    print("Key: \(key), Value: \(value)")
}

/* set */
var station1:Set<String>

station1=[]
station1=["강남역", "교대역", "잠실역"]

var fruit:Set = ["딸기", "바나나", "수박"]
var station2 = Set<String>()

station2.insert("을지로입구")
station2.insert("서울역")

if station2.isEmpty {
    print("빈 Set 입니다.")
}

station2.remove("서울역")
print(station2)

var team1:Set=["김철수","홍길동"]
var team2:Set=["박수홍","김철수","고길동"]

team1.intersection(team2)
team1.symmetricDifference(team2)
team1.union(team2)
team1.subtract(team2)

var colorA:Set=["Black","Brown","Yellow","Blue","White"]
var colorB:Set=["Yellow","White"]

colorB.isSuperset(of: colorA)
colorA.isSubset(of: colorB)
colorB.isSubset(of: colorA)
colorA.isSuperset(of: colorB)
colorB.isStrictSubset(of: colorA)
colorA.isDisjoint(with: colorB)


/* Optional */

let firstName:String?
firstName = "길동"

let lastName:String?
lastName = "홍"


var tempAge:Int?
tempAge=nil
tempAge=30


/* Optional 해제 */
var fullName:String = lastName! + firstName!

if let name = firstName {
    var name = "이름은 " + name + "입니다."
}

if let first = firstName, let last = lastName{
    var name = first + " " + last
}

var age10:Int? = 30

if age10 == 30 {
    print("30살입니다. (비교연산자는 optional해제 안해도됨)")
}

/* Function */
func helloWorld(){
    print("Hello World!!")
}

helloWorld()


func getDate() -> String {
    return "2017-01-02"
}

var date=getDate()
print(date)

// 매개변수 있고 반환값 없는 함수
// 변수명:type
func setUser(username:String, age2:Int) {
    print("\(age2)살 \(username)님 환영합니다.")
}
setUser(username : "홍길동", age2 : 23)


func setUser(name:String) {
    print(name)
}
setUser(name: "choi")

func add(firstNum:Int, secondNum:Int) -> Int {
    return firstNum + secondNum
}
var result = add(firstNum: 1, secondNum: 2)

func getNameAndAge() -> (String, Int) {
    return ("홍길동", 22)
}
let (name1, age1) = getNameAndAge()

/* 튜플사용시 type alias를 지정해둘수 있다. */
typealias size = (Int, Int)

func getSize() -> size {
    return (200, 100)
}
print(getSize())

// 외부, 내부 매개변수명
// 외부에 노출되는 매개변수 -> name, id, email
// 회원가입시 개인정보 입력
func addUser(name userName:String, id userId:String, email userEmail:String){
    let param1 = userName
    let param2 = userId
    let param3 = userEmail
}
addUser(name: "홍길동", id: "chdl0000", email: "chdl0000@gmail.com")


// 매개변수 명 생략
func addPerson(_ name:String, _ id:String) {
    let param1 = name
    let param2 = id
}
addPerson("홍길동", "chdl0000")


// 가변인자
func average(user:String, scores:Int...){
    var tot:Int = 0
    for score in scores {
        tot += score
    }
    let avg = tot/scores.count
    print("\(user)님의 평균은 \(avg)점 입니다.")
}
average(user: "홍길동", scores: 30,50,40,100)

//기본값
func setNameAndAge(user:String, age:Int=0) {
    print("\(user)님의 나이는 \(age)입니다.")
}
setNameAndAge(user: "홍길동")
setNameAndAge(user: "김길동", age: 30)

