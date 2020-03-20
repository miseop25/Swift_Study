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
 # Expression Pattern
 */

let a = 1
switch a {
case 0...10:
    print("0~ 10")
default:
    break
}

/*:
 ## Pattern Matching Operator
 ````
 a ~= b
 ````
 */

// 이항 연산자!
// 보통은 equal to 와 동일한 결과를 리턴함


struct Size{
    var w = 0.0
    var h = 0.0
    
    static func ~=(left: Range<Int>, right: Size)-> Bool{
        return left.contains(Int(right.w))
    }
}


let s = Size(w: 10 , h: 20 )

switch s {
case 1..<9:
    print("1...9")
case 10..<99:
    print("10~99")
default:
    break
}
