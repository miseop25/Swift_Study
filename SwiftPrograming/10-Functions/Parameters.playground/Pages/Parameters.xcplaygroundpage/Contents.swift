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
 # Parameters
 ![define](define.png)
 ![param](param.png)
 */


func add(x: Int, y: Int) -> Int {
//    파라미터는 함수 바디에서 사용할 수 있는 임시 상수이다.
    let z = x + y
    return z
}
add(x: 10, y: 13)















/*:
 ## Calling Functions
 ![call](call.png)
 */
add(x: 10 + 2, y: 123 - 23)
// 이런식으로 이렇게 Expr 안에 표현식을 넣어 줘도 된다.














/*:
 ## Default Value
 ![defval](defval.png)
 */


func sayHello(to: String = "HIHI") {
    print("Hello, \(to)")
}

sayHello()
sayHello(to: "minseop")
// 이런식으로 미리 초기값을 정해 줄 수 있다.


















