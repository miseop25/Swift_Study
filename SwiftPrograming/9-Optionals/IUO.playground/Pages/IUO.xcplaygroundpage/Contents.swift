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
 # Implicitly Unwrapped Optionals
 ![iuo](iuo.png)
 */
// 암시적으로 추출되는 옵셔널, 자동으로 추출되는 옵셔널을 말하는것임!
// 어떻게 선언하고 어떤 조건에서 자동으로 언랩핑 되는지

// 자료향 뒤에 느낌표가 붙어있으면 자동으로 추출되겠구나~~ 하면 됨

let num: Int! = 12

let a = num
// 형식 추론을 하는 경우에는 자동으로 추출되지 않는다.

let b: Int = num
// 타입을 정해 줬으니 자동으로 언랩핑 되어서 Int 형식으로 사용이 가능하다.

// IUO 도 옵셔널이다! 단 특정 조건에서 자동으로 추출하고 강제로 추출한다.
// 즉, 강제로 추출하기 때문에 nil 이 있어도 강제로 추출하기 때문에 에러가 발생한다.

// IUO 는 되도록 사용하지 않는 것이 충돌과 스트레스를 줄이는 가장 좋은 방법임




