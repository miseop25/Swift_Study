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
 # Tuple Decomposition
 ![decomposition](decomposition.png)
 */


// Decomposition : 우리말로 분해라는 뜻
// 개별상수를 따로 저장 하는것

// 이름의 수와 튜플의 값은 갯수 맞추어야 한다.
let data = ("<html>", 200, "OK", 123.4)
//let body = data.0
//let code = data.1
//let message = data.2
//let size = data.3
// 이렇게 하면 좀 번거로움
let (body, code, message, size) = data
// 이렇게 하면 단일값으로 분해되어서 앞에서부터 순서대로 저장되게 된다!  -> 훨씬 가독성이 크게 된다.
// 갯수를 잘 맞추어야 한다.
// 만약한 하나만 빼고 싶다면?
let (body2, code2, message2, _) = data
// 이렇게 와일드 카드 문법으로 진행을 해주면 4번재 튜플값은 분해되지 않는다.
