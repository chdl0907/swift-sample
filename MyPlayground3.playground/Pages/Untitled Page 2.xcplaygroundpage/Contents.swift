// 2일차 2번쨰
// 클래스는 기본초기화를 해주지않음.
class Shape{
    var x:Float
    var y:Float
    var width:Float
    var height:Float
    var color:String
    //초기화 method를 통해 기본 초기화를 해줌
    init(x:Float, y:Float, width:Float, height:Float, color:String){
        self.x=x
        self.y=y
        self.width=width
        self.height=height
        self.color=color
    }
    //클래스 안에 있기때문에 method
    func draw(){
        print("X: \(self.x), Y: \(self.y), WIDTH: \(self.width), HEGIHT: \(self.height), COLOR: \(self.color)")
    }
    
}
/*
class Rectangle : Shape {
    // private 객체 외부에서 사용하지 못하도록 접근제한
    private var x:Float
    private var y:Float
    private var width:Float
    private var height:Float
    
    //초기화 method를 통해 기본 초기화를 해줌
    init(x:Float, y:Float, width:Float, height:Float){
        self.x=x
        self.y=y
        self.width=width
        self.height=height
    }
    
    //클래스 안에 있기때문에 method
    func draw(){
        print("사각형그리기")
        print("X: \(self.x), Y: \(self.y), WIDTH: \(self.width), HEGIHT: \(self.height), COLOR: \(self.color)")
    }
 
    func moveRectangle(toX:Float, toY:Float){
        
        if toX >= 0 && toX <= 320 {
            if toY >= 0 && toY <= 480 {
                self.x=toX
                self.y=toY
                print("X: \(self.x), Y: \(self.y)로 이동함")
            } else {
                print("Y값 범위초과.")
            }

        } else {
            print("X값 범위초과.")
        }
    }
}


class Circle : Shape {
    func draw(){
        print("동그라미 그리기!")
        print("X: \(self.x), Y: \(self.y), WIDTH: \(self.width), HEGIHT: \(self.height), COLOR: \(self.color)")
        
    }
    
}
 
 var rec=Rectangle(x: 10, y: 10, width: 100, height: 100, color: "YELLOW")
 rec.draw()
 
 var rec2=Rectangle(x: 20, y: 20, width: 200, height: 200, color: "YELLOW")
 rec2.draw()
 
 // rec에 참조된 x,y의 값을 변경
 var tmpRectangle=rec
 //tmpRectangle.x=100
 //tmpRectangle.y=100
 tmpRectangle.draw()
 tmpRectangle.moveRectangle(toX: 200, toY: 200)
 
 rec.moveRectangle(toX: 150, toY: 150)
 

 
 */

class Rectangle: Shape{
    override func draw(){
        print("사각형 그리기!")
        super.draw()
    }
    
    func shake(){
        print("Shake~")
    }
}

class Circle: Shape{
    override func draw(){
        print("원 그리기!")
        super.draw()
    }
}


var rec3=Rectangle(x: 10, y: 10, width: 100, height: 100, color: "Red")
rec3.draw()


var circle=Circle(x: 10, y: 10, width: 100, height: 100, color: "YELLOW")
circle.draw()

/*
class MoveRectangle:Rectangle {
    // final을 사용하면 MoveRectangle class를 상속받는 class는 재 정의 할 수 없다.
    final func move(toX:Float, toY:Float){
        self.x=toX
        self.y=toY
        print("\(self.x), \(self.y)로 이동함")
    }
}

var moveRec=MoveRectangle(x: 10, y: 10, width: 100, height: 100, color: "blue")
moveRec.move(toX: 30, toY: 60)

*/

print("==============")
//타입변환
var tmp:Shape
tmp=rec3
tmp.draw()
tmp=circle
tmp.draw()


// 열거형 선언 : 이 값들밖에 가질수 없음
enum CharacterAction{
    case idle
    case walk(Int)
    case run(Int)
    case jump(Int)
}

class Character{
    let name:String
    var action:CharacterAction
    
    init(name:String){
        self.name=name
        self.action=CharacterAction.idle
    }
    
    func run(speed:Int){
        self.action=CharacterAction.run(speed)
        switch self.action{
        case let .run(value) where value >= 120:
            print("현재 시속 \(value)km. 과속으로 달리는 중입니다.")
        case let .run(value) where value < 120:
            print("현재 시속 \(value)km. 정상속도입니다.")
        default:
            print("인식불가")
        }
    }
}

let char=Character(name: "홍길동")
char.run(speed: 120)