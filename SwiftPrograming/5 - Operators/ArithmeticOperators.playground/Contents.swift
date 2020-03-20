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
 # Arithmetic Operators
 */
// 사칙연산에 관한 것


/*:
 ## Unary Plus Operator
 ````
 +a
 ````
 */
// 전치 연산자 이다.
var a = 12
let b = 31
a += 1

/*:
 ## Addition Operator
 ````
 a + b
 ````
 */



/*:
 ## Unary Minus Operator
 ````
 -a
 ````
 */



/*:
 ## Subtraction Operator
 ````
 a - b
 ````
 */



/*:
 ## Multiplication Operator
 ````
 a * b
 ````
 */



/*:
 ## Division Operator
 ````
 a / b
 ````
 */

b / a
/*:
 ## Remainder Operator (Modulo Operator)
 ````
 a % b
 ````
 */
b % a
// 나머지 연산자는 정수만을 지원한다.
// 실수 나머지를 하고 싶으면 다음과 같은 것을 사용해야 한다.
let c = 1.23
let d = 2.34

c.truncatingRemainder(dividingBy: d)
/*:
 ## Overflow
 */
//let num: Int8 = 9 * 9 * 9
// 이렇게 자료형에 저장 할 수 없는 것은 오버플로우가 발생하게 된다.



