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
 # Overflow Operators
 */

Int8.max
Int8.min

//let num: Int8 = Int8.max + 1 -> 오버 플로우가 발생하게 된다.
// 대부분의 C 계열은 오버플로우를 허용함 하지만 스위프트는 아님
/*:
 ## Overflow Addition Operator
 ````
 a &+ b
 ````
 */
// 이렇게 하면 더하기 연산에서 오버플로우가 허용됨

let a: Int8 = Int8.max
let b: Int8 = a &+ 1  // 127에서 1을 더했는데 -128이 출력됨
// 값이 순환하게 되는 것임

/*:
 ## Overflow Subtraction Operator
 ````
 a &- b
 ````
 */
let c: Int8 = Int8.min &- 1
// 위의 값은 127이 찍히게 된다. 이처럼 오버플로우 연산은 허용 범위를 넘기는 것이 아니라 순환 하는 것이다.
// 2의 보수로 음수로 해서그럼

let d: UInt8 = UInt8.max &+ 1

/*:
 ## Overflow Multiplication Operator
 ````
 a &* b
 ````
 */







