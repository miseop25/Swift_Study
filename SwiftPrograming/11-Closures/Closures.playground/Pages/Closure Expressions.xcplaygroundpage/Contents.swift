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
 # Closures
 ![closure-expr](closure-expr.png)
 ![closure](closure.png)
 */
// 클로져는 비교적 짧고 독립적인 코드조각! , 람다 같은거
// 함수는 클로져 중에서도 이름을 가진 클로져임 -> 그냥 함수로 부름
// 클로져 중에서 이름이 없는 클로져를 배울것
// 함수와 클로져는 서로 호환된다.
// 클로져는 func 키워드가 없다.
// 파타미터와 리턴을 생략 할 수도 있다!! -> 가장 단순한 클로져임

let c = {
    print("hello swift")
}
c()
// 이런식으로 호출을 하는 것임!!

let c2 = { (str : String) -> String in
    return "Hello, \(str)"
}

let result = c2("Closure")
// 클로져를 호출할땐 아규먼트 레이블을 호출하지 않는다

typealias SimpleStringCloser = (String) -> String

func perform(closer: SimpleStringCloser){
    print(closer("iOS"))
}
perform(closer: c2)


perform(closer: { (str: String) -> String in
    return "hi \(str)"
})




//: [Next](@next)
