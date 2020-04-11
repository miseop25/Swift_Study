//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit

/*:
 # Type Casting
 */
// 인스턴스 타입을 확인하거나 다른 형식으로 바꾸기 위해서 사용한다.


class Figure {
   let name: String
   
   init(name: String) {
      self.name = name
   }
   
   func draw() {
      print("draw \(name)")
   }
}

class Triangle: Figure {
   override func draw() {
      super.draw()
      print("🔺")
   }
}

class Rectangle: Figure {
   var width = 0.0
   var height = 0.0
   
   override func draw() {
      super.draw()
      print("⬛️ \(width) x \(height)")
   }
}

class Square: Rectangle {
   
}

class Circle: Figure {
   var radius = 0.0
   
   override func draw() {
      super.draw()
      print("🔴")
   }
}



/*:
 ## Type Check Operator
 ![type-check](type-check.png)
 */
// 어떠한 타입인지 확인 하는 것!
let num = 123
num is Double
num is Int

let t = Triangle(name: "tri")
let r = Rectangle(name: "re")
let s = Square(name: "sq")
let c = Circle(name: "Ci")

r is Rectangle
r is Figure
// 상속받은 것 까지는 참을 리턴함
r is Square
// 스퀘어가 렉텡글을 상속하기 때문에




/*:
 ## Type Casting Operator
 ![type-casting](type-casting.png)
 */

// 컴파일 타임 케스팅은 서로 호환되는 타입끼리 하는 것( 브릿징이라고 함)

let nsstr = "str" as NSString
//"str" as Int
// 케스팅에 실패하면 컴파일 에러가 발생한다.

// 런타임 케스트는 실행 한 이후에 결과를 알 수 있다.
// forced cast 는 가능한 사용하지 않는 것이 좋다

t as? Triangle
t as! Triangle
// 원래 형식으로 하는건 아무런 의미가 없다!

var upcasted: Figure = s
upcasted = s as Figure
// 업케스팅은 항상 성공하고 안전하다

upcasted as? Square
upcasted as! Square
// 원래형싱으로 다운하는건 성공한다.

upcasted as? Rectangle
upcasted as! Rectangle
// 원래형시의 슈퍼클래스로 가는것도 성공한다.

upcasted as? Circle
// 안되니까 nil을 리턴하게된다.
//upcasted as! Circle
// 이렇게 하면 에러가 발생한다. -> 사용하면 안된다.

if let c = upcasted as? Circle {
//     이런식으로 옵셔널 바인딩처럼 많이 사용한다.
}

let list = [t, r, s, c]
// 배열에 서로다른 형식을 저장했는데
// 에러가 발생하지 않는다.
list
// list 의 타입은 가장 가까운 슈퍼클래스로 접근하게 된다.

for item in list {
    item.draw()
//    비록 슈퍼클래스에서 호출했지만 오버라이딩 된 것이 출력된다. -> 암기하도록 한다.
//    이런 것이 객체지향의 특징인데 "다형성" 이라고 한다.
    if let c = item as? Circle {
        c.radius
//         이렇게 다운케스팅을 한 후에 접근한다!!
    }
}



