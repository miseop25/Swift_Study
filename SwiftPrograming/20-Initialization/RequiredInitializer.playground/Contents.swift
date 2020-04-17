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
 # Required Initializer
 ![required](required.png)
 */

// 필수 생성자라고 번역된다.
// 서브 클래스에서 반드시 동일한 생성자를 구현 해야 하도록 하는 것!


class Figure {
   var name: String

   required init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
}

class Rectangle: Figure {
   var width = 0.0
   var height = 0.0
    
    init() {
        width = 0.0
        height = 0.0
        super.init(name: "asd")
    }
    required init(name: String) {
        width = 0.0
        height = 0.0
        super.init(name: name)
    }
}


