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
 # Type Methods
 ![static-func](static-func.png)
 ![class-func](class-func.png)
 ![call](call.png)
 */

class Circle {
    
    static let pi = 3.14
    var radius = 0.0
    func getArea() -> Double {
        return radius * radius * Circle.pi
    }
    
    static func printPi() {
        print(pi)
//        타입매소드는 이렇게 바로 가능하지만 인스턴스를 가져 올 수는 없다.
    }
    
    
}

Circle.printPi()

class StrokeCircle: Circle {
    override static func printPi() {
        print(pi)
//         상속을 하려면 static 키워드가 아니라 class 키워드로 선언을 해야함 (상위 클래스에서)
    }
}
