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

import Foundation

/*:
 # Any, AnyObject
 */

// 범용 자료형
// 코드의 유용성을 높여주지만 남용할 경우 코드의 가독성이 떨어지고 유지보수가 어렵다
// any 는 모든 형식 저장가능
// any object는 모든 클래스를 저장 할 수 있다.

var data: Any = 1
data = 2.3
data = "Stt"
data = [1,2,3]
data = NSString()
// 이렇게 어떤 형식이라도 모두 적용 시킬 수 있다.

var obj: AnyObject = NSString()
// 여기에는 참조형식만 저장 할 수 있다.

// Any로 이루어진 타입 이레이징이 많음 -> 향식을 지워야 함
// any로 이루어진거 타입 케스팅을 진행

if let str = data as? String {
    print(str.count)
}

/*:
 # Type Casting Pattern
 */



switch data {
case let str as String:
    print(str.count)
case let list as [Int]:
    print(list.count)
default:
    break
}


