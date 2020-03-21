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
 # For-In Loops
 */











/*:
 ## Syntax
 ![syntax](syntax-range.png)
 */
// 반복문!! 범위 연산자를 지정된 거를 한단계씩 증가시키면서 진행된다.
var sum = 0
for i in 1...10 {
    sum += i
}
// 언더 스코어( _ ) 문자 -> python 이랑 똑같다.

let power = 10
sum = 1
for _ in 1...power {
    sum *= 2
}

for i in stride(from: 0, to: 10, by: 2){
    print(i)
}







/*:
 ## Syntax
 ![syntax](syntax-collection.png)
 */


let list = ["Apple", "iPad", "iPhone"]
for j in list {
    print(j)
}
// python 과 같이 이렇게도 진행 할 수 있다.!!!

for i in 2...9 {
    for j in 1...9{
        print("\(i) * \(j) = \(i*j) ")
    }
}




