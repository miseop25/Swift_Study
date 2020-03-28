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
 # Comparing Dictionaries
 */

let a = ["A": "Apple", "B": "Banana", "C": "City"]
let b = ["A": "Apple", "C": "City", "B": "banana"]


a == b
// 요소가 서로 다른 순서로 저장되어 있어도 키와 값이 동일하다면 동일하다고 판단

a.elementsEqual(b) { (lhs, rhs) -> Bool in
    return lhs.key.caseInsensitiveCompare(rhs.key) == .orderedSame && lhs.key.caseInsensitiveCompare(rhs.key) == .orderedSame
}// -> 올바르지 않은 코드임
// 대소문자 상관없이 비교하기.
// 딕셔너리는 동일한 순서로 정렬되어 있지 않기 때문에 위와 같이 구현하면 안된다. 항상 다른 값이 존재하게 됨


let aKeys = a.keys.sorted()
let bKeys = b.keys.sorted()

aKeys.elementsEqual(bKeys) { (lhs, rhs) -> Bool in
    guard lhs.caseInsensitiveCompare(rhs) == .orderedSame else {
        return false
    }
    guard let lv = a[lhs], let rv = b[rhs],
        lv.caseInsensitiveCompare(rv) == .orderedSame else{
            return false
    }
    return true
}
// dict 는 정렬되지 않은 친구이기 때문임

/*:
 # Finding Elements
 */


var words = ["A": "Apple", "B": "Banana","C": "City"]

let c: ((String, String)) -> Bool = {
    $0.0 == "B" || $0.1.contains("i")
}

words.contains(where: c)

let r = words.first(where: c)
r?.key
r?.value
// 실행할때마다 검색되는 순서가 달라지기 때문에 조건을 만족하는 값이 있다면
// 값이 달라질 수 있다.

words.filter(c)
//  조건을 만족하는 모든 딕셔너리가 새로운 딕셔너리로 리턴되었음!!











