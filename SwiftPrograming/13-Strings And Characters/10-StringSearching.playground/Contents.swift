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
 # Finding Substrings
 */

let str = "Hello, Swift"


str.contains("Swift")
str.lowercased().contains("swift")
// 문자열이 포함되어 있다면 true 를 리턴함

if let range = str.range(of: "Swift"){
    print(range)
}

str.range(of: "swift", options: [.caseInsensitive])

let str2 = "Hello, Programming"
let str3 = str2.lowercased()

var common = str.commonPrefix(with: str2)
// 공통적인 부분을 가지고 있느냐? 하는 거임

common = str.commonPrefix(with: str3)
common = str.commonPrefix(with: str3, options: [.caseInsensitive])
// 매소드 호출 대상에 포함된 단어로 반환을 하게된다
common = str3.commonPrefix(with: str, options: [.caseInsensitive])
