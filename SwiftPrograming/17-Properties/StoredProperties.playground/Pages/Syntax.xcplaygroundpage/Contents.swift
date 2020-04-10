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
 # Stored Properties
 ![syntax](syntax1.png)
 */

struct Person {
    let name: String = "Minseop"
    var age: Int = 26
}


/*:
 # Explicit Member Expression
 ![syntax](syntax2.png)
 */
var p = Person()
p.name
p.age
// 이렇게 점문법을 위에 있는 것처럼 말한다.

p.age = 10
// struct인스턴스를 상수에 저장하면 모든 속성이 상수가 된다. ,구조체안에 var로 선언이 되어 있다 하더라고


/*:
 # Lazy Stored Properties
 ![lazy](lazy.png)
 ![lazy-syntax](lazy-syntax.png)
 */
// 지연저장 속성이라고 표현함

struct Image {
    init() {
        print("New image")
    }
}

struct BlogPost {
    let title: String = "Title"
    let content: String = "Content"
    lazy var attachment: Image = Image()
    
    let date: Date = Date()
    lazy var formattedDate: String = {
       let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
    }()
//    다른 속성에 접근해야 할대 지연 저장 속성으로 접근한다,
}

var post = BlogPost()
// 특정 속성에 항상 접근 하지 않는다면 lazy를 사용하는 것이 더 좋다고 함
// attachment 속성은 아직 초기화 되지 않는 것 -> 접근하려면 var로 저장해야 한다
post.attachment
// 여기에서 저장되는 것임
