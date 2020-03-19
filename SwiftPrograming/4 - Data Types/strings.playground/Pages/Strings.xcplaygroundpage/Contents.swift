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
 # Strings
 */

//  Swift 에서 문자열은 큰 따움표 안에 있는 문자들이다.
"123" // -> 숫자로 구성되어 있지만 큰 따움표 안에 표시되어 있기 때문에 문자열이다.
let str = "1" // 하나의 문자가 표함되어 있긴 하지만 여전히 문자열이다.
type(of: str)




/*:
 # Character
 */
let ch:Character = "1"
type(of: ch)
// Swift 에서는 문자를 이렇게 처리를 해야 한다.
//character  자리에는 하나의 문자로만 진행을 해야 한다. 두개 이상된다면 항상 String 이다.

let char:Character = " "
// 문자에 빈공간을 만들고 싶다면 이렇게 공백을 두고 있어야 한다.




