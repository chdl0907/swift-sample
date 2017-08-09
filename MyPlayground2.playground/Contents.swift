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