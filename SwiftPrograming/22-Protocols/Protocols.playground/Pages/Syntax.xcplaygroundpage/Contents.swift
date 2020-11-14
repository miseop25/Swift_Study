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
 # Defining Protocols
 ![define](define.png)
 ![protocol-inheritance](protocol-inheritance.png)
 */

// 괄호 안에는 선언만 진행하게 된다.
// 상속도 가능, 다중 상속도 허영한다. -> 두개이상의 프로토콜을 상속 받을 수 있다,

protocol Something {
    func doSomething()
}





/*:
 # Adopting Protocols
 ![adopting](adopting.png)
 */

struct Size: Something {
    func doSomething() {
        print("protocol")
    }
//     이렇게 프로토콜 안에 있는 메소드를 구현 해야 한다.
    
}






/*:
 # Class-Only Protocols
 ![class-only](class-only.png)
 */


// 저렇게 anyOBject로 진행하게 되면 클래스에서만 사용이 가능하다.

protocol SomethingObject: AnyObject, Something {
    
}

class Object: SomethingObject {
    func doSomething() {
        print("Object")
    }
// 이렇게 채용하고 있는 것도 진행 해 주어야 한다.
    
    
}

var a = Object()
a.doSomething()
