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

// 상속에 대해서 공부한다!!

/*:
 # Inheritance
 ![inheritance](inheritance.png)
 */
// 클래스 이름 적고 : 다음에 상속할 클래스 이름을 적는다.
// 단 다중 상속은 지원한지 않는다.

class Figure {
    var name = "Unknown"
    
    init(name: String) {
        self.name = name
    }
    func draw() {
        print("draw \(name)")
    }
}

class Circle: Figure {
    var radius = 0.0
}

let c = Circle(name: "Circle")
c.draw()
c.name = "c"
c.draw()
// 서브클래스는 슈퍼클래스로부터 맴버를 상속 할 수 있다.

final class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
}
// 파이널 키워드로 선언한 키워드를 파이널 키워드!
// 다른 클래스가 상속하지 못하도록 진행을 한 것이다.

/*:
 ## final class
 ![final class](final-class.png)
 */

// 다른 클래스가 상속하는 것을 금지하는 것!!
