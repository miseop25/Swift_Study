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
 # Appending Strings and Characters
 */
var str = "Hello"
str.append(", ")
// append 는 void 라 값을 반환하지 않음
let s = str.appending("swift")
str
// appending 메소드는 대상문자열을 직접 변경하지 않는다.
// 변수를 가져오고 그 뒤에 붙이는거임
// 대부분의 swift 가 이런식으로 진행된다

// ed 로 리넡되는건는 원본을 건드리는것

"File size is ".appendingFormat("%.1f", 12.34556)
// 원하는 포멧을 진행할때 진행
// 이친구도 ing 있기 때문에 아무런 문제가 없음

var str_2 = "hello Swift"

str_2.insert(",", at: str_2.index(str_2.startIndex, offsetBy: 5))
str_2

if let sIndex = str_2.firstIndex(of: "S"){
    str_2.insert(contentsOf: "Awesome ", at: sIndex)
}
str_2
