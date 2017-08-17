/* Extension */
class Person{
    let firstName:String
    let lastName:String
    var age:Int
    
    init(firstName:String, lastName:String, age:Int){
        self.firstName=firstName
        self.lastName=lastName
        self.age=age
    }
}

// 함수나 property를 분류할경우 사용(ex. 회원가입/로그인/탈퇴),
extension Person{
    func getFullName()->String{
        return self.lastName + " " + self.firstName
    }
}

let person=Person(firstName: "길동", lastName: "홍", age: 33)
person.getFullName()


extension Person{
    func addAge(num:Int){
        self.age+=num
    }
}

person.addAge(num: 3)
person.age


/* Protocol 선언 */
class MainViewController{
    var title: String="Main View"

    
    func openSubView(){
        let subVC=SubViewContorller()
        // sub방식의 주소를 전달받는 방식
        subVC.delegate=self
        // property로 값을 전달해주는 방식
        subVC.title="서브"
        subVC.open()
    }
    
    func open(){
        print("\(self.title) 화면 열기")
    }
    
    func sendNewmessage(message:String){
        print("\(message)")
    }
}

class SubViewContorller{
    var title:String="Sub View"
    var delegate:MainViewController?
    
    func open(){
        print("\(self.title) 화면 열기")
    }
    
    func sendMessage(){
        self.delegate?.sendNewmessage(message: "안녕하세요.")
    }
}

let mainVC=MainViewController()
mainVC.open()
mainVC.openSubView()

/* 두 개의 클래스가 서로의 함수를 호출하는 방법 
  1. B->A를 호출할경우 주소값을 전달해줘야만함(let insB=ClassB(delegate: self))
  2. B에서는 전달받은 주소를 꼭 가지고 있어야함(var delegate:ClassA)
*/
/* protocol과 중복된내용이 있어 임시 주석처리
class ClassA{
    // ClassA 입장에서 ClassB를 호출해서 값을 표현할때
    func clickBtn(){
        let insB=ClassB(delegate: self) // 어딘가에 ClassB객체가 만들어짐. 그 객체의 주소는 insB
            // delegate에 self를 할당해서 다른 클래스에서 delegate를 호출할떄 본인의 주소를 전달(나한테 연락하려면 이 주소로 해라)
        insB.methodB()
    }
    
    func methodA(){
        print("methodA")
    }
}

class ClassB{
    // ClassB 입장에서 ClassA를 호출해서 값을 표현할떄는 self를 사용
    //var delegate:Any //모든 인스턴스를 할당/ AnyObject : 모든 객체를할당
    var delegate:ClassA
    
    // Optional로 선언하지 않는 경우 초기화
    init(delegate:ClassA){
        self.delegate=delegate
    }
    
    func methodB(){
        print("methodB")
        self.delegate.methodA()
    }
}

let insa=ClassA()
insa.clickBtn()
*/

/* Protocol */
protocol ClassBDelegateProtocol{
    func methodA()
}
class ClassA: ClassBDelegateProtocol{
    func clickBtn(){
        let insB=ClassB(delegate: self)
        insB.methodB()
    }
    
    func methodA(){
        print("methodA")
    }
}

class ClassB{
    var delegate:ClassBDelegateProtocol
    init(delegate:ClassBDelegateProtocol){
        self.delegate=delegate
    }
    
    func methodB(){
        print("methodB")
        self.delegate.methodA()
    }
}