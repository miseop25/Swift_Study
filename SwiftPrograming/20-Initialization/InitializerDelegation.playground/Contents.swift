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
 # Initializer Delegation
 
 ## Value Type
 */
// 초기화 코드에서 중복을 최대한으로 줄이고 코드를 모든 속성을 효율적으로 초기화 하기 위해 새용된다.


struct Size {
   var width: Double
   var height: Double

   init(w: Double, h: Double) {
      width = w
      height = h
   }

   init(value: Double) {
//      width = value
//      height = value
    self.init(w: value, h: value)
   }
//    문법적으로 이상 없지만 여러 생성자를 수정해야 할 경우 문제가 발생하게 된다.
//    모든 속성을 하나가 진행해야 편하다.
//    다른 생성자를 호출 하는 것읋 inintalizer delegation 이라고 한다. 위임한다는 뜻읻. -> 보다 코드가 효육성있고 고치기도 쉬워짐
}


/*:
 ## Class
 */


// 클래스 이니셜 라이즈 델리게이트의 규칙!
// 1. designated(지정) initalizer 는 반드시 슈퍼클래스의 designated initalizer를 호출해야 한다.
// -> Delagate up 이라고 한다.
// 2. convenience initalizer 는 반드시 동일한 클래스에 있는 다른 initalizer를 호출해야 한다.
// -> Delegate across 라고 한다.
// 3. convenience initalizer를 호출했을 때 최종적으로 동일한 클래스에 있는 designated initalizer를 호출 되어야 한다.
// 정말 중요한 규칙들이다.

class Figure {
    let name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "unknown")
    }
}

class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
    
    init(n: String, w: Double, h: Double){
        width = w
        height = h
        super.init(name: n)
    }
    
    convenience init(value: Double) {
        self.init(n: "Rect", w: value, h: value)
    }
}


class Square: Rectangle {
    convenience init(value: Double) {
        self.init(n: "Squre", w: value, h: value)
        
    }
    convenience init() {
        self.init(value: 0.0)
    }
}









