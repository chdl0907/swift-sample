// 변수나 상수에 함수 대입
func addNum(firstNum:Int, secondNum:Int)->Int{
    return firstNum + secondNum
}

let addFunc=addNum
var result=addFunc(1,2)


//변수나 상수의 함수타입 선언
let funcType:(Int, Int)->Int
funcType=addNum(firstNum:secondNum:)
result=funcType(2,2)

// 함수의 반환 타입으로 함수 #1
func getAddFunc()->(Int,Int)->Int{
    func addFunc(firstNum:Int, secondNum:Int)->Int{
        return firstNum+secondNum
    }
    return addFunc
}
let myFunc=getAddFunc()
result=myFunc(3,4)


// 함수의 반환 타입으로 함수 사용 #2
// addFunc에 파라미터가 없으나 그 상위 함수인 getNewAddFunc에 파라미터를 참조하여 가져오므로 정상적으로 계산이 된다.
func getNewAddFunc(firstNum:Int, secondNum:Int)->()->Int{
    func addFunc()->Int{
        return firstNum+secondNum
    }
    return addFunc
}
let myNewFunc=getNewAddFunc(firstNum: 4, secondNum: 7)
result=myNewFunc()



// 함수의 인자값으로 함수사용
func setAddFunc(firstNum:Int, secondNum:Int, addFunc:(Int, Int) -> Int) -> Int{
    let result=addFunc(firstNum,secondNum)
    return result
}
result=setAddFunc(firstNum: 10, secondNum: 99, addFunc: addNum(firstNum:secondNum:))



/* 클로저 : 이름이 없는 함수(익명함수)를 호출하는 상수, 보통 1회성 동작호출시에 많이 사용한다. */
let closer={()->Void in
    print("Hello, World")
}

closer()

// 클로저 문법 생략
var fp0:(Int,Int)->Int
fp0={
    (param1:Int, param2:Int)->Int in
    return param1+param2
}
fp0(1,2)

// 반환값 생략
fp0={
    (param1:Int, param2:Int) in
    return param1+param2
}
fp0(1,2)
 

// 매개변수 타입 생략
// 변수에서 선언된 타입을 참고함. 따라서 변수의 타입이 없으면 생략불가
var fp1:(Float, Float)->Float={
    (param1, param2) in
    return param1+param2
}
fp1(1.2,1.3)


// 매개변수명 생략
fp1={return $0+$1}
fp1(1.1,1.2)
