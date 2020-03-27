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
 # String Indices
 */
// 문자열 인데스에 대해서 공부

let str = "Swift"
// 스위프트에서 문자열 인덱스는 정수가 아님

let firstCh = str[str.startIndex]

let lastCharIndex = str.index(before: str.endIndex)
let lastCh = str[lastCharIndex]
print(firstCh)
print(lastCh)
// 이런식으로 인덱스를 이렇게 처리해야 함
// endIndex : 마지막 인덱스 다음 값을 가리킨다.
// 마지막 인덱스 before 를 사용해서 진행을 해야한다.

let seconedCharIndex = str.index(after: str.startIndex)
let secoendChar = str[seconedCharIndex]
// 다음 인덱스에 접근하려면 이렇게 접근을 해야 한다.

let thirdCharIndex = str.index(after: seconedCharIndex)
let thirdChar = str[thirdCharIndex]







