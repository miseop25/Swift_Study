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
 # Overriding
 */


// 상속받은 슈퍼클래스를 서브클래스에 맞게 재정의 하는 것!!
// 두가지 방식으로 구현
// 새로운 코드를 추가하거나, 완전히 새로운 코드를 작성하는 것!

class Figure {
    var name = "Unknown"
    
    init(name: String) {
        self.name = name
    }
    func draw() {
        print("draw \(name)")
    }
}

class Circle: Figure {
    var radius = 0.0
    var diameter: Double {
        return radius * 2
    }
//     읽기 전용 계산 속성이다.
    
    override func draw() {
        super.draw()
//        상위 구현을 이렇게 실행 할 수 있다!!
        print("오버라이딩")
    }
//    이렇게 오버라이딩 키워드를 주고 매소드를 수정한다
}

let c = Circle(name: "동그라미")
c.draw()

class Oval: Circle {

    override var diameter: Double {
        get {
            return super.diameter
        }
        set {
            super.radius = newValue / 2
        }
//        이렇게 해도 읽기 전용 속성이라 직접 쓰면 안됨
    }
    override var radius: Double {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
    
//    override var radius: Double {
//        get {
//            return super.radius
//        }
//        set {
//            super.radius = newValue
//        }
////         읽기와 쓰기가 있는 조건은 이렇게 get 과 set을 써야한다.
//    }
}
// 오버라이딩한 맴버에서 self를 할때에는 재귀호출을 하지 않을지 조심해야 함 -> 디버깅 하기도 어렵다.


// 상속을 금지하는 final 키워드는 메소드나 맴버 변수에게도 적용 시킬 수 있다.
// 그렇다고 아에 상속을 하지 않는 것이 아니다. 그냥 호출은 가능하다.











