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

// 삼항 연산자를 배운다
/*:
 # Ternary Conditional Operator
 ## Syntax
 ![Syntax](syntax.png)
 */

// 스위프트에 3항 연산자는 이 코드 밖에 없다!!
// condition 은 bollen 표현식!!
// condition 이 참이면 왼쪽거 거짓이면 오른쪽 거이다.

let hour = 2

hour < 12 ? "am" : "pm"

// expr 들이 같도록 진행이 되어야 한다.

hour < 11 ? "Goodmorning" : (hour < 17 ? "GOOD AFTERNOON" : "GOOD EVENING")

// 선택지가 3개 이상일 때에는 if 문이나 switch 문을 사용하는 것이 더 낫다.









