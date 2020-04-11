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
 # Instance Method
 ![Method](method.png)
 ![Call Method](call-method.png)
 */

// 메소드는 특정 함수에 속한 함수!!
// 단지 구현하는 위치가 다르고 인스턴스를 통해 함수를 호출하는것만 차이가 난다.
// 클래스 구조체 열거형에서 구현 할 수 있다.
// 메소드는 인스턴스 이름을 통해 호출함


class Sample {
    var data = 0
    static var sharedData = 123
    
    func doSomething() {
        print(data)
//        스텍틱 멤버는 이름만으로 사용 할 수 없다.
        Sample.sharedData
//         이렇게 형식 이름으로 접근을 해야 한다.
    }
    
    func call() {
        doSomething()
    }
}


let a = Sample()
a.data
a.doSomething()
a.call()
a.data = 123
a.doSomething()


class Size {
    var width = 0.0
    var height = 0.0
    
    func enlatge() {
        width += 1.0
        height += 1.0
//        구조체에서 속성을 바꾸는 메소드를 사용하려면
//        mutating func enlarge  이런식으로 mutating 을 사용해야 한다.!!
//        값 형식에서는 꼭 이렇게 해야한다.
    }
}

let s = Size()
s.enlatge()
