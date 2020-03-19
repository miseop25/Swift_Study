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

//: [Previous](@previous)
/*:
 # Integer Types
 
 ![IntegerTypes](integer-types.png)
 */

//int8 은 1바이트를 저장 할 수 있는것 256 까지
//int64 는 8 바이트를 표시 가능

Int8.min
Int8.max

MemoryLayout<Int8>.size
// 1 바이트를 저장 할 수 있는 것

/*:
 ## Signed vs Unsigned
 
 ![SignedUnsigned](signed-unsigned.png)
 */
// Unsigned 는 양수만 표현이 가능하다.
// 요즘에는 int8. 16 이런거는 프레임워크에서 반환이 되어 올때 사용할려고 할때 사용한다.



/*:
 ## Int & UInt
 */



//: [Next](@next)
