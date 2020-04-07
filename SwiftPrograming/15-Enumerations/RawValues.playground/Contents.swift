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
 # Raw Values
 ![Raw Values](raw-values.png)
 */

enum Alignment {
    case left
    case right
    case center
}
// 위에 거는 원시값을 가지고 있지 않는다.
// 원시값은 필수적인 것이 아니다.

// 열거형 이름 뒤에 원시값의 자료형을 적는게 표식된다.
// 원시값은 수정 할 수 없다.

enum AlignmentRaw: Int {
    case left
    case right = 100
    case center
}
// 아무것도 안 했을때에는 0,1,2... 이런식으로 값이 매겨진다.

AlignmentRaw.left.rawValue
AlignmentRaw.right.rawValue
AlignmentRaw.center.rawValue
// 원시값을 직접 지정하면 지정한 값 이후부터 진행

//AlignmentRaw.left.rawValue = 10
// 선언 이후에 원시값을 바꾸는 것이 불가능하다.

AlignmentRaw(rawValue: 0)
// 이렇게 파라미터로 raw 값을 부르면 이 값을 가진 case 를 호출한다.

AlignmentRaw(rawValue: 200)
// 없으면 nil 을 리턴한

enum Weekday: String{
    case sunday
    case monday
    case thusday
    case wednesdat
    case friday
    case saturday
}
Weekday.sunday.rawValue
// 문자열에서는 자동으로 이름이 원시값으로 들어가게된다.


enum ControlChar: Character{
    case tab = "\t"
    case newline = "\n"
}
// 운시값이 문자인 경우에는 직접 원시값을 지정해야 한다.

