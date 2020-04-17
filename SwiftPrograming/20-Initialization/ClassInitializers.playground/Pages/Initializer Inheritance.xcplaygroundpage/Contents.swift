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
 # Initializer Inheritance
 */
class Figure {
   var name: String

   init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
    
    convenience init() {
        self.init(name: "unknow")
    }
}

class Rectangle: Figure {
    var width: Double = 0.0
    var height: Double = 0.0
    
    init(name: String, width: Double, height: Double){
        self.width = width
        self.height = height
        super.init(name: name)
//        이런식으로 슈퍼클래스에 있는건 슈퍼클래스에게 맡겨야한다.
//         현재 클래스 이후에 상위 속성 초기화 진행
    }
    override init(name: String) {
        width = 0
        height = 0
        super.init(name: name)
    }
    convenience init() {
        self.init(name: "unknow")
    }
//     컨비니언스 이니셜 라이즈는 항상 동일한 클래스에 있는 다른 이니셜라이즈를 호춣한다.
//    슈퍼 클래스에 있는 건 건드리지 못한다. 그래서 오버라이딩이 적용되지 않는다.

}
// 스위프트가 이니셜라이즈를 상속하는 규칙!!
// 1. 서브클래스의 모든 속성이 기본값으로 초기화 되어 있고 데지그네이트 이니셜라이즈가 생성되지 않았다면
//    슈퍼클래스의 이니셜 라이즈를 상속한다
// 2. 서브클래스가 모든 데지그네이트를 상속받았거나 오버라이딩 했다면 모든 컨비니언스 이니셜라이즈가 상속된다.













//: [Next](@next)
