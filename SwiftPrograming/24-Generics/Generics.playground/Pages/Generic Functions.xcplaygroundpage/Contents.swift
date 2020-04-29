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
 # Generics
 */

func swapInteger(lhs: inout Int, rhs: inout Int) {
   let tmp = lhs
   lhs = rhs
   rhs = tmp
}

var a = 10
var b = 20

swapInteger(lhs: &a, rhs: &b)
a
b


func swapInteger16(lhs: inout Int16, rhs: inout Int16) {
   // ...
}

func swapInteger64(lhs: inout Int64, rhs: inout Int64) {
   // ...
}

func swapDouble(lhs: inout Double, rhs: inout Double) {
   // ...
}

// 이렇게 하게되면 같은 이름의 함수가 너무 많아져 관리가 힘들어 진다.

/*:
 ## Generic Function
 ![generic-function](generic-function.png)
 */

// 앵글브라켓과 T 가 있는데 T는 타입 파라미터라고 함, 형식이름을 여기에다가 써 놓는 것이다.
// 두개 이상 적어 놓는 것도 가능하다.

func swapValue<T>(lhs: inout T, rhs: inout T) {
   let tmp = lhs
   lhs = rhs
   rhs = tmp
}
// 이런식으로 하면 하나의 일을 하는 함수를 여러 형식대로 만들 필요 없이 모든 값을 파라미터로 전달 할 수 있다

a = 1
b = 2

swapValue(lhs: &a, rhs: &b)










//: [Next](@next)


