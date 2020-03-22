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
 # Argument Label
 */











/*:
 ## Syntax
 ![arg1](arg1.png)
 ![arg2](arg2.png)
 */
// 위에는 파라미터 이름이랑 아규먼트 이름이랑 같음
// 아규먼트 Label 을 사용하면 코드를 작성함에 있어서 가독성이 높아진다.

func sayHello(name: String) {
   print("Hello, \(name)")
}
func sayHello(to name: String) {
   print("Hello, \(name)")
//     여기 안에서는 name을 써야하고
//    함수 밖에서는 to 로만 접근을 해야한다.
}

sayHello(to: "Swift")
// Argument label = > 바로 위에 있는 to 임

// 같은 함수 이름이 두개 있을 수 있는 이유는
// swift 는 파라미터가 다르면 다른 함수로 구분하기 때문이다.

func sayHello(_ name: String) {
   print("Hello, \(name)")
}
// argument label 을 생략한것
sayHello("hellp")
// 생략하면 이렇게 쓸 수 있다.
