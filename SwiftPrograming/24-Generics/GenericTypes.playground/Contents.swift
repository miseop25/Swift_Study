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
 # Generic Types
 ![generic-type](generic-type.png)
 */

// 기존 형식에 타입 파라미터를 추가하면 제네릭 형식이 된다. 그렇게 새로운 것이 아니다.



struct Color<T> {
    var red: T
    var green: T
    var blue: T
}

var c = Color(red: 128, green: 80, blue: 200)
// int 형식을 전달하면 자동으로 int로 된다.

let d = Color(red: 129.0, green: 123.4, blue: 23.4)

var a: Color<Int>

let arr: Array<Int>

let dict: Dictionary<String, Double>

extension Color {
    func getCimponents() -> [T] {
        return [ red ,blue, green]
    }
//     형식에서 사용한 타입 파라미터를 변경하는 것은 허용하지 않는다.
}


let intColor = Color(red: 1, green: 2, blue: 3)

intColor.getCimponents()

let dColor = Color(red: 1.2, green: 2.3, blue: 3.4)
dColor.getCimponents()

