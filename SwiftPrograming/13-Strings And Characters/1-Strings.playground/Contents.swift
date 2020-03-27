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
 # Strings and Characters
 */
let s = "String"
//let c = "C"
// 큰따운표 사이에 문자의 숫자는 관계없이 다 문자열이 됨
let c: Character = "C"

let emptyChar: Character = " "
// 빈 문자는 공백으로 표시한다.

let emptyString = ""
emptyString.count
// 문자열의 반공간은 요렇게


/*:
 ## String Types
 */
// 스위프트의 문자열은 두가지!, 스위프트 문자열 & NSString 문자열
// 서로 호환된긴 함

let nsstr: NSString = "str"

let swiftString = nsstr as String
// 이렇게 타입 케스팅을 해 주어야 한다.






/*:
 ## Mutability
 */
// 문자열의 가변성 , let 이랑 var 키워드로 구분된다.
// 우리가 항상 알듯이 상수 변수 개념임

/*:
 ## Unicode
 */
let str = "Swift String"
// 기본적으로 유니코드가 구성되어 있음
// 대부분의 앱에서는 특정 인코딩을 하지 않아두 됨

var thumUp = "👍"
// 이런식으로 이모티콘도 입력이 가능하다
thumUp = "\u{1F44D}"
//올린 엄지
//유니코드: U+1F44D, UTF-8: F0 9F 91 8D
// 스위프트에서 이모티콘을 사용할때 이런식으로도 사용 할 수 있다.
