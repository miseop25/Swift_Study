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
 # Comparing Strings
 */

// 문자열을 비교하기

let largeA = "Apple"
let smallA = "apple"
let b = "banana"

largeA == smallA
largeA != smallA
// 대소문자를 비교함 , 다르게 분류함

largeA < smallA
largeA < b
//  대문자가 더 작기 때문에 이런 결과가 나오고 있다.

largeA.compare(smallA) == .orderedSame
// 이런식으로 해야 함 compare 는 열거형으로 반환을 함

largeA.caseInsensitiveCompare(smallA) == .orderedSame
// 이거는 대소문자를 구분하지 않기 때문에 true 가 나오게 된다.

largeA.compare(smallA, options: [.caseInsensitive]) == .orderedSame
// 이렇게도 대소문자 구분 하지 않고 진행을 할 수 있다.



let str = "Hello, Swift Programming!"
let prefix = "hello"
let suffix = "Programming"

str.hasPrefix(prefix)
// 접두어만을 비교하는 것
str.hasSuffix(suffix)
// 접미어만 비교, 뒤에서 부터 진행을 하니까 두개가 다름
// 이 두개를 사용할 때에는 문자열 옵션을 사용할 수 없어서
// 대문자로 바꾸거나 소문자로 바꾼 이후에 진행을 해야한다.

str.lowercased().hasPrefix(prefix)
// 이런식으로 다 소문자로 바꾼 다음에 진행을 해야 한다,

