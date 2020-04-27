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
 # Value Types & Reference Types
 */
// 값형식과 참조형식에 대해 공부


struct SizeValue {
   var width = 0.0
   var height = 0.0
}

var value = SizeValue()
// 이렇게 생성하면 스택에 메모리 공간이 생성된다.

var value2 = value
// 이경우 값형식에서는 값이 복사된다. -> 서로 다른 메모리에 저장된 개별 인스턴스임
value2.width = 1.0
value2.height = 2.0

value
value2
// 두 변수가 서로 영향을 주지 않음

class SizeObject {
   var width = 0.0
   var height = 0.0
}

var object = SizeObject()
// 스택과 힘에 새로운 공간이 생성된다.
// 스택에는 주소가 저장되고 값은 힙에 저장이 된다.

var object2 = object
// 스택에 새로운 메모리 공간이 생성되지만 가리키는 곳은 같은 힙이다!

object2.width = 1.0
object2.height = 2.0

object
object2
// 이렇게 값을 변경하면 두 곳 모두 변경되게 된다.


let v = SizeValue()
// 값형식에서는!!
// let 키워드를 이렇게 하면 모든 속성이 상수가 되어버려서 변경 할 수 없다!!

let o = SizeObject()
o.width = 1.0
o.height = 2.0
// 참조형식은 메모리 주소가 상수형식으로 진행
// 메모리주소가 가리키는 힙은 변경 할 수 있다!!


// 참조형식에서 스택에 저장되어 있는 메모리를 비교할 때에는 삼등(===) 연산자를 사용한다.
object === object2
// 이런식으로 사용한다( 스택에 있는 메모리 주소 값을 비교 한 것)



