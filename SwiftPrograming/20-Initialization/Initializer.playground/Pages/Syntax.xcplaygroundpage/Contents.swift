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
 # Initialization
 
 ## Default Initializer
 */
// initializer 는 우리말로 생성자라고 불리운다.
// 인스턴스의 초기화를 담당하는게 initializer 라고 한다.

class Position {
//    초기화 방법은 2가지
//    1. 선언과 동시에 기본값 지정
    var x = 0.0
    var y: Double
//    initializer 를 통해 생성한다.
    var z: Double?
//    optinoal 을 사용하면 기본 널이 진행됨
    init() {
        y = 0.0
//        이런식으로 초기화를 시킴
//        속성이 항상 동일한 값을 가진다면 1번재 방법을 선택
//        파라미터를 이용한다면 2번째 방법을 진행
    }
//    미리 다 1번 방법으로 초기화 되었다면 디폴트 이니셜라이즈가 생성됨
//    init 안해도 된다.
    
}


/*:
 ## Initializer Syntax
 ![initializer](initializer.png)
 ![call](call.png)
 */


// 초기화는 가능한 빨리 진행하고 초기화에 영향주지 않는거는 실행 하면 안된다.
class SizeObj {
    var width = 0.0
    var height = 0.0
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    convenience init(value: Double) {
//        width = value
//        height = value
//        이렇게 진행 할 수도 있음
        self.init(width: value, height: value)
//        이렇게 진행할려면 convenience 같은것을 진행하면 된다.
    }
}



/*:
 ## Memberwise Initializer
 */
struct SizeValue {
    var width = 0.0
    var height = 0.0
}

let s = SizeValue()
SizeValue(width: 321.4, height: 12.3)
// 맴버와이즈 이니셜 라이즈 이란 것이 이런것임, 이니셜라이즈를 구현하지 않았을때 제공을 해줌



