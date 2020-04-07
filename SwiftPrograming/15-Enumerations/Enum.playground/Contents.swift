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
 # Enumerations
 ![enum](enum.png)
 */
// 열거형이 무엇이지? 공부하기!
// 연관된 상수들을 하나의 자료형으로 묶은거를 열거형!
// 열거형을 사용하는 이유!
// 코드의 가독성광 안정성을 높여주기 때문에!!






/*:
 ## Syntax
 ![syntax](enum-syntax.png)
 */

// 열거형의 선언은 enum 이넘! 이라고 함
// 열거형은 uperCarmel case 이름으로 진행한다.
// case 의 이름은 LowerCarmel case 로 진행
// 각 case 는 이름이 다 달라야 하낟.

enum Aligment {
    case left
    case right
    case center
}
Aligment.center
// 열거형을 쓰고 esc 누르면 어떤 case들이 있는지 알 수 있다.

var textAligment = Aligment.center
// 열거혈 케이스는 독립적인 값이다!!

textAligment = .left
// 앞에서 Aligment를 참조받았기 때문에 . 만 찍고 뒤에거를 진행 할 수 있다. 이름 생략 가능

if textAligment == .left {
    print("OK")
}

switch textAligment {
case .left:
    print("left")
case .center:
    print("center")
case .right:
    print("right")
}
// 열거형을 분류할 때에는 위에 값처럼 보통 Switch문을 사용해서 진행한다.
