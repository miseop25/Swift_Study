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
//: [Previous](@previous)

import Foundation

/*:
 # Removing Substrings
 */

var str = "Hello, Awesome Swift!!!"

let lastCharIndex = str.index(before: str.endIndex)
str.remove(at: lastCharIndex)
// 제일 마지막 인덱스를 업애주어야지만 충돌이 안생김
str

var removed = str.removeFirst()
str
str.removeLast()
str
str.removeFirst(5)
// 뒤에 숫자를 넣어주면 그만큼 업애준다.

if let range = str.range(of: "Awesome"){
    str.removeSubrange(range)
}
str

str.removeAll(keepingCapacity: true)
// 이렇게 하면 메모리 공간은 업애지 않는다.
str = "Hello, Awesome Swift!!!"

var substr = str.dropLast()
// 원본 문자열에서 마지막 문자열 빼고 새로운 문자열 리턴
// 메모리 공간은 공유하게 된다. 마지막꺼 빼고 다른것만 공유하게 되는것

substr = str.drop(while: { (ch) -> Bool in
    return ch != ","
})
substr
// 콤마를 이후의 거를 리턴한다!!

