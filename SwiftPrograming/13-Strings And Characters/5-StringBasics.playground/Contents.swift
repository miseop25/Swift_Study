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
 # String Basics
 */
// 문자열을 처리할때 필요한 아주 기본적인 테크닉!!

var str = "Hello Swift String"
var emptyStr = ""
emptyStr = String()
// 이렇게 해도 빈문자열을 만들 수 있다.

let a = String(true)
// 이 true 는 문자열 true 이다. "" 가 있기 때문에

let d = String(str)

let hex = String(123, radix: 16)
// 이렇게 하면 16진수로 나누어짐, 2,8 진수 가능함
let bn = String(123, radix: 2)


let repeatStr = String(repeating: "👍", count: 10)
// 이렇게 하면 같은문자를 반복해서 저장 시킬 수 있다.


let e = "\(a) \(d)"
// 이렇게 할 수도 있고
let f = a + d
// 이렇게 할 수도 있다.

str += "!!"
// 이런 복합 할당 연산자로 할 수 있다.
// 메소드를 통해서도 가능하긴 함 -> 나중에 배울것

str.count
// 문자열의 길이를 정수로 리턴을 받을 수 있다.
str.count == 0
str.isEmpty
// 빈문자열인지 알고 싶을때는 이렇게 진행한다.

str == "APPLE"
str != "APPLE"
// 비교하는거, 대소문자를 따져서 비교한다.

"apple" < "Apple"
// 소문자로 시작하는 a 가 아스키코드에서는 더 크다

str.lowercased()
str.uppercased()
// 이렇게 ed, ing 로 끝나는 거는 원본을 건드리지 않고 새로운 값을 리턴한다.
str = "apple ipad"
str.capitalized
// uperCarmel case 로 마꾸어줌

for char in str {
    print(char)
}
// 이렇게 for 문 돌려도 된다.

let num = "1234567"
num.randomElement()
// 랜덤으로 아무거나 뽑아내는거

num.shuffled()
// 문자열에 있는거를 랜덤으로 섞어서 문자 배열로 리턴해 준다.
