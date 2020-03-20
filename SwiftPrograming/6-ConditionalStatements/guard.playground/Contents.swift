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
 # guard
 ## Syntax
 ![guard-syntax](guard-syntax.png)
 */

// 가드문
// Early Exit
// 원하는 코드가 실행도면 불필요한 부분은 실행 하지 않는 것!
// 가드문에서는 else 가 꼭 필요하다.그리고 코드의 실행을 중지시켜야 한다!! 중지하지 않으면 컴파일 에러가 발생한다!!
// return 문이나 throw 문을 사용해서 코드를 중지 시켜야 한다!
//컨디션이 True 면 else 부분이 실행되지 않는다.
// 가드문을 사용하면 if 문 대비 중첩을 줄일 수 있고 가독성이 좀 더 좋다,

func validate(id: String?) -> Bool {
    guard let str = id else {
//        이 else 문에서는 str 을 사용 할 수 없다!
        return false
    }
    guard str.count >= 6 else {
//       위에서 쓴 str을 여기서 사용 할 수 있다
        print(str)
        return false
    }
    
//    guard let id = id, id.count >= 6 else {
//        return false
//    }
    
    return true
}

// if 문 대비 가드문이 중첩성이 없어서 좀 더 볼 수 있음
// 조건이 단순하거나 임시 값으로 사용한다면 if 문을 사용한다.
// 복접하거나 바인딩한 값을 계속해서 사용해야 한다면 guard 문을 사용한다.
validate(id: "hello Swift")
validate(id: "abc")


