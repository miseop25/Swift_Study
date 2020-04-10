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
 # self
 ![self](self.png)
 */

//class Size {
//   var width = 0.0
//   var height = 0.0
//
//    func calcArea() -> Double {
//        return self.width * self.height
////          정식 문법에서는 이렇게 진행을 한다.
////          하지만 셀프를 생략하고 많이 진행을 한다.
//    }
//    var area: Double {
//        return calcArea()
//    }
//    func update(width: Double, height: Double) {
//        self.width = width
//        self.height = height
////        파라미타와 인스턴스의 변수명이 같을때에는 self 를 생략할 수 없다.
//    }
//
//    func doSomething() {
//        let c = { self.width * self.height  }
//    }
//
//    static let unit = ""
//    static func doSomething() {
////        self.width
////        형식 속성 내에서 이렇게 접근을 할 수 없음
//        self.unit
//    }
//}

// self 는 현재 인스턴스에 접근하기위해 사용하는 특별한 속성
// self 를 타입맴버에서 사용하면 인스턴스가 아니라 형식 자체를 나타낸다.

struct Size {
   var width = 0.0
   var height = 0.0
    
    mutating func reset(value: Double) {
        width = value
        height = value
        self = Size(width: value, height: value)
    }
}






/*:
 # super
 ![super](super.png)
 */
// self와 문법적으로 차이가 없지만 상속 때문에 클래스 에서만 사용가능하다.

