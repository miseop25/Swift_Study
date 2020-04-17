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
 # Failable Initializer
 ![failable](failable.png)
 */

// 실패를 허용하는 초기화를 진행하는 것
// 초기화에 실패하더라도 에러가 나지 않고 nil을 리턴한다.
// 파일같은것을 읽어 왔던 것을 초기화 할때 사용한다.
// 초기화의 옵셔널 같은 것임

struct Position {
    let x: Double
    let y: Double
    
    init?(x: Double, y: Double) {
        guard x >= 0.0 , y >= 0.0 else {
            return nil
        }
//         nil 을 리턴한다는 것은 초기화가 실패 했다는 뜻임
        self.x = x
        self.y = y
    }
    
    init!(value: Double) {
        guard value >= 0.0 else { return nil}
        self.init(x: value, y: value)
    }
    
    
    
}


var a = Position(x: 123.4, y: 32)

a = Position(x: -12, y: 0)
// 초기화가 중단되고 nil을 리턴함

var b: Position = Position(value: 12)
//b = Position(value: -21)
// 초기화에 실패 했더라도 nil 이 리턴됨
// 변수의 포지션이 non 옵셔널 포지션이면 에러가 발생하게 된다.

// 느낌표가 있는 건 IUO 형식으로 진행한다. 그리고 초기화가 실패하면 에러가 발생한다.
// 그러므로 주로 물음표가 있는거를 사용함
