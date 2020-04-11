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
 # Upcasting & Download Casting
 */


class Figure {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func draw() {
        print("draw \(name)")
    }
}

class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
    
    override func draw() {
        super.draw()
        print("⬛️ \(width) x \(height)")
    }
}

class Square: Rectangle {
   
}

let f = Figure(name: "Unknown")
f.name
// 상위 클래스에서 하위 클래스에 접근은 못함 -> 모르니까 뭐가 있는지

let r = Rectangle(name: "네모")
r.name
r.width

let s: Figure = Square(name: "스퀘어")
// 이렇게 업케스팅 하면 슈퍼 클라스가 가지고 있는 맴버에만 접근가능 하다.
// 업케스팅은 안전함 항상 성공함 -> 에러가 발생하지 않음

//let downCaset = s as! Square
// 여기에 있는 것이 다운 케스팅임, 다시 원래의 속성이 되었기 때문에 상속받은 모든 속성에 접근 가능
let downCaset = s as! Rectangle
// 이렇게 하는 것도 가능

class Rhombus: Square {
    var angle = 45.0
}

let dr = s as! Rhombus
// 인스턴스의 원래 형식인 스퀘어 보다 아래에 있기 때문에 에러가 발생한다.
// 즉 Rhombus의 속성이 없기 때문에, 하지만 속성이 없어도 이런 경우는 허용되지 않는다!
