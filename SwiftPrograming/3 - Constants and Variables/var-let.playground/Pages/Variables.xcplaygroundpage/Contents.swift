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
 # Variables
 
 ## Syntax
 ![Variables Syntax](syntax-var.png)
 */
// 변수는 변할 수 있는수, 값을 저장하고 언제든지 바꾸게 할 수 있다.
// 변수를 선언하는 키워드는 var 그 뒤에 식별자(이름)이 따라오게 된다.
// 이 식별자로 변수에 접근하고 구분할 수 있다.

var name = "Swift"
var year = 2020
var valied = true
print(type(of: name))

name
// 여기에서 name 은 표현식이다 expresition

name = "minseop"
print(name)
print(year)
print(valied)
/*:
 ## Syntax
 ![Variables Syntax](syntax-var-new-value.png)
 */
var another_name = name
another_name = "hahah"
print(name, another_name)

let let_name = "dosent change"
//let_name = "changed"
// -> 이런식으로 상수의 값을 바꿀라고 하면 에러가 나게 된다

// name = 10
// 이런식으로 문자열로 정의된 것에 정수를 입력하면 에러가 난다

// Swift 에서는 상수를 많이 사용한다.
// 실수로 값을 변경해야 하지 않는다.
// 컴파일러가 상수를 돌릴때 좀 더 빠르게 최적화 시켜주기도 함

//: [Next](@next)
