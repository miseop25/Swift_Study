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
 # Deinitializer
 ![deinit](deinit.png)
 */

// 우리말로 소멸자라고 불림
// 인스턴스가 메모리에서 정리되기 전에 부가적인 정리작업을 실시하기 위해 진행한다.
// 하나만 사용할 수 있음
// 우리가 직접 호출하지 않고 자동으로 진행되게 된다. -> 우리가 호출하는 경우는 없다

class Size {
   var width = 0.0
   var height = 0.0
}

class Position {
   var x = 0.0
   var y = 0.0
}

class Rect {
   var origin = Position()
   var size = Size()
    
    deinit {
        print("deinit \(self)")
    }
}


var r: Rect? = Rect()
r = nil
// 이렇게 진행하게 되면 자동으로 인스턴스가 제거되게 된다.
// 주로 디버깅 용도로 진행하게 된다.
