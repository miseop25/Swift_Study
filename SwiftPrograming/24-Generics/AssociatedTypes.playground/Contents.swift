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
 # Associated Types
 ![associatedtype](associatedtype.png)
 */

protocol QueueCompatible {
    associatedtype Element
   func enqueue(value: Element)
   func dequeue() -> Element?
}
// 제네릭 프로토콜을 할때에는 연관 형식을 따라야 한다.


class IntegerQueue: QueueCompatible {
    typealias Element = Int
    
    func enqueue(value: Int) {
        
    }
        
    func dequeue() -> Int? {
        return 0
    }
}

class DooubleQue: QueueCompatible {
    func enqueue(value: Double) {
        
    }
    func dequeue() -> Double? {
        return  0
    }
}
//실제로는 typealias를 많이 생략하는 경우가 많음
