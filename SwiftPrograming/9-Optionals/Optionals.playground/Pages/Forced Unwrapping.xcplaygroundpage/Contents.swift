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

//: [Previous](@previous)

import Foundation

/*:
 # Unwrapping
 */


var num: Int? = nil
print(num)
num = 123
print(num)
// 그냥 123이 출력되는 것이 아니라 optional 123 이라고 출력이 된다.
// 이렇게 랩이 쌓여져 있다! -> UnWrapping, 랩을 벗겨내야 한다







/*:
 ## Forced Unwrapping
 ![forced-unwrapping](forced-unwrapping.png)
 */

// 강제로 추출하는법! "!" 느낌표를 붙이면 된다.
print(num!)
// 이렇게 하면 123이 잘 나오게 된다.

num = nil
//print(num!)
// 만약 nil 값이라면 에러가 발생하게 된다! -> 그냥 죽어버리게 되는 것
// 강제 추출을 사용할 때에는 값이 저장되어이 있는지 확인 하는 것이 중요하다.

if num != nil {
    print(num!)
}
// 이렇게 num 이 nil 이 아닌지 확인하면 에러가 나지 않는다.
num = 123
let before = num // before 는 옵셔널 int 이다
let after = num! // 여기서는 그냥 non 옵셔널 타입이다










