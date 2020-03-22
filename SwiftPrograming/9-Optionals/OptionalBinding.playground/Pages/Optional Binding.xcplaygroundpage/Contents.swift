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
 # Optional Binding
 */

var num: Int? = nil











/*:
 ## Syntax
 ![optional-binding-syntax](optional-binding-syntax.png)
 */

// 옵셔널 바인딩은 위와 같은  방법으로 사용한다.
// 바인딩은 값이 리턴이 된다면 랩이 벗겨지면서 상수에 적용되게 된다.
// 그 이후에 코드가 진행되게 된다. guard 에서는 else 부분이 사용되게 된다.

num = 123
if let a = num {
    print(a)
}else {
    print("nil")
}

var str: String? = "str"
guard let str = str else{
    fatalError()
//    여기 안에서는 벗겨낸 값을 사용 할 수 없음!
}
print(str)

















































