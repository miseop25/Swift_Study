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
 # In-Out Parameters
 */
// 입출력 파라미터

var num1 = 12
var num2 = 34












/*:
 ## Syntax
 ![inout-def](inout-def.png)
 ![inout-call](inout-call.png)
 */


func swampNumber(_ a: inout Int, with b: inout Int) {
    let tmp = a
    a = b
    b = tmp
}
swampNumber(&num1, with: &num2)
// 이렇게 하면 위에있는 거를 수정 할 수 없음
// 동일한 변수를 두번 이상 하는 것은 허용되지 않음
// 반드시 별도의 변수를 전달해야 한다.
// 당연하게도 상수를 보내버리면 에러가 나오게 된다. -> 상수는 값을 바꿀 수 없기 때문에

// 리터럴을 전달하는 경우
//swampNumber(&12, with: &34) -> 이런식으로 하면 에러가 나오게 된다.
// 기본값을 선언하는 것 자체를 허용 하지 않는다!

num2
num1
// 이렇게 하면 값이 교체되는 것을 볼 수 있음!

//func sum(of nums: inout Int...){
//
//}
// inout 파라미터는 가변 파라미터에서 사용하면 안된다.!!


