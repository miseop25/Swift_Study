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
 # Type Safety
 */

// 형식 안정성 , 값을 잘못된 형식으로 처리하는 것을 방지하는 Swift의 특징이다.

//let str: String = 123 이런식으로 문자열에 정수를 입력하는 것은 용남되지 않는다.
// 정수와 실수 등을 모두 구분한다.

let a: Int = 10
let b: Int8 = 11
//let c = a + b     -> 이렇게 형식이 다른거를 허용하지 않는다.
// 자료형의 이름이 다르다면 서로 호환되지 않는다!!

let rate: Double = 1.94
let amt = 10_000_000
let result = rate * Double(amt)
Int(result)

















