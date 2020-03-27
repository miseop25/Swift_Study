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
 # Substring
 */

let str = "Hello, Swift"
let l = str.lowercased()

// Substring 은 하나의 문자에서 특정 범위내에 있는거를 말한다.
var first = str.prefix(1)

// 문자열을 처리할때 메모리를 낭비하지 않기 위해서 사용한다.
// 즉 substring은 원본 문자열의 메모리 공간을 공유한다.
// 값을 변경하는 시점에만 새로운 메모리 공간을 차지한다.

first.insert("!", at: first.endIndex)
// 이 시점에 새로운 메모리 공간을 차지하게 되는것!, 변경하는 시점에
// 이런거를 Copy-on-Writr 최적화라고 한다.

let newStr = String(str.prefix(1))
// 이런식으로 하면 바로 새로운 문자열이 생성되고 메모리 공간을 차지한다.

str.substring(to: str.index(str.startIndex, offsetBy: 2))
// 이 메소드는 이제 더이상 사용되지 않는다
// 현재는 사용할 수 있지만 다음버전에서는 작동하지 않는다!! 경고해 준다.

var s = str[str.startIndex...str.index(str.startIndex, offsetBy: 1)]
// 이런식으로 ㅎ야 한다.
s = str[...str.index(str.startIndex, offsetBy: 1)]
// 이렇게 하면 조금더 짤아지긴 했음

str[str.index(str.startIndex, offsetBy: 2)...]
