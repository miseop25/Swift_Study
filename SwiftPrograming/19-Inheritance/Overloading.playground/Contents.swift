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
 # Overloading
 */

func process(value: Int){
    print("process int")
}

func process(value: String){
    print("process Str")
}

func process(_ value: String){
    print("아규먼트")
}

//func process(value: Double ) -> Double{
//    return Double(value)
//}
//func process(value: Int) -> Int{
//    return Int(value)
//}


// 오보로딩을 지원하는 스위프트는 이름이 같더라도 파라미터 형식이 다르다면 식별을 진행 할 수 있다.
// 함수의 이름을 줄일 수 있다!!


process(value: 0)
process(value: "123")


// 오버로딩 규칙
// 1. 함수의 이름이 동일하다면 파라미터 수로 판단한다.
// 2. 이름과 파라미터의 수가 동일하다면 파라미터의 자료형으로 구분한다.
// 3. 이름과 파라미터 수와 자료형이 동일하다면 아규먼트 레이블로 구분한다.
// 4. 이름과 파라미터가 완전히 동일하다면 리턴형으로 구분한다.

// 가능한 3번째거 까지만으로 진행을 하는 것이 좋다. 4번째 부터는 이름을 바꾸는게 더 가독성이 높음

struct Rect {
    func area() -> Double {
        return 0.0
    }
    
    static func area() -> Double {
        return 0.0
    }
}


let r = Rect()
Rect.area()
r.area()
