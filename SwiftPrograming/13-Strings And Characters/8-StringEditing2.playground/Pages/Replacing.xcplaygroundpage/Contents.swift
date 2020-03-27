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

import Foundation

/*:
 # Replacing Substrings
 */
var str = "Hello, Objective-C"

if let range = str.range(of: "Objective-C"){
    str.replaceSubrange(range, with: "Swift")
}
// 범위를 먼저 받아오고 그 다음에 대치하는 것임
str

if let range = str.range(of: "Hello"){
    let s = str.replacingCharacters(in: range, with: "Hi")
//     ing 가 있는 메소드는 원본을 변경하지 않고 작업을 진행한다.
    print(s)
    str
}

var s = str.replacingOccurrences(of: "swift", with: "Awesome Swift")
// 만약에 of 에 해당하는 것을 찾지 못한다면 그냥 그 값을 리턴해 버림

s = str.replacingOccurrences(of: "swift", with: "Awesome Swift", options: [.caseInsensitive])
// 이 옵션을 추가하게 되면 대소문자를 구분하지 않고 검색을 하게 된다.
//: [Next](@next)
