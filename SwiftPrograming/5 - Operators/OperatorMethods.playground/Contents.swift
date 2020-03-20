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
 # Operator Methods
 ## Syntax
 ![syntax](syntax.png)
 */


struct Point {
    var x = 0.0
    var y = 0.0
}

extension Point: Equatable {
    static func ==(ihs: Point, rhs: Point) -> Bool{
        return(ihs.x == rhs.x) && (ihs.y == rhs.y)
    }
}

let p1 = Point(x : 12, y : 34)
let p2 = Point(x :67, y : 89)
p1 == p2
// 연산자 메소드!!
// 가능한 원래 기능과 동일하거나 유사하게 구현을 해야 한다 -> 코드의 가독성 높이고 논리적인 오류 줄이기 위해
// 기존 기능이 리턴 하는 것을 그대로 리턴 해야 한다.






