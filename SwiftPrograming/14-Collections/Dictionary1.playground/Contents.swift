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
import Foundation
/*:
 # Dictionary
 ## Dictionary Literal
 ![dictliteral](dict-literal.png)
 */

var dict = ["A": "Apple", "B": "Banana"]



/*:
 ## Dictionary Type
 ![type1](dict-type.png)
 ![type2](dict-type2.png)
 */
// 키의 자료형와 값의 자료형은 모든 dict 내의 요소가 같아야 한다,

let dict1: Dictionary<String, Int>
let dict2: [String:Int]




/*:
 ## Creating a Dictionary
 */
let words = ["A": "Apple","B": "Banana"]
let empty_Dict: [String:String] = [:]
let empty_Dict2 = [String: String]()
// 명시적 문법들











/*:
 ## Inspecting a Dictionary
 */

words.count
words.isEmpty
empty_Dict.isEmpty






/*:
 ## Accessing Keys and Values
 */
words["A"]
// 키에 저장되어 있는 value 값을 전달해준다.
// 값을 바로 검색하는 것은 제공하지 않늗다.

let a = words["E"]
// nil 이 전달되어있기 때문에 a 는 옵셔널 스트링임

let b = words["E", default: "Empty" ]
// 어떤 경우라도 문자열이 리턴되기 때문에 논 옵셔널 스트링이다.

for k in words.keys{
    print(k)
}
// 순서가 딱히 있는 것으 아니다.
for k in words.values {
    print(k)
}
// 배열은 아니지만 배열과 유사한 매소드를 가지고 있다.
for k in words.keys.sorted(){
    print(k)
}

let keys = Array(words.keys)
// 배열로 바꾸고자 할 때에는 이렇게 진행하면 된다.
