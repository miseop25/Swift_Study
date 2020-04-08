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
 # Initializer Syntax
 ![init](init.png)
 */

let str = "123"
let num = Int(str)

class Position {
    var x: Double
    var y: Double
    
    init() {
        x = 0.0
        y = 0.0
    }
    init(value: Double) {
        x = value
        y = value
    }
//     파라미터를 사용하는 것
}
// 생성자는 속성 초기화가 가장 중요하고 유일한 목적임


/*:
 ![call-init](call-init.png)
 */
// 생성자는 그냥 괄호를 씀

let a = Position()
a.x
a.y
// 아무것도 하지 않았기 때문에 모두 0 을 호출함

let b = Position(value: 100.0)
b.x
b.y


// 열거형 클래스 구조체는 모두 설계도이다.
// 설계도를 할때 가장 처음 하는 것이 생성자를 지정하는 것!












