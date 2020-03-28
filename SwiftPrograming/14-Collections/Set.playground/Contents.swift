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
 # Set
 ## Set Type
 ![set-type](set-type.png)
 */

// 동일한 값을 하나만 가지고 있다.
// 헤싱을 사용하기 때문에 배열보다 검색보다 빠르다.

let set = [1,2,4,5,5,5]
// -> 형식추론을 사용할 수 없다!
set.count
let realSet: Set<Int> = [1,2,2,3,3,3]
// set은 중복된 값을 허용하지 않음
// 요소의 자료형을 생략하는 것은 허용함
realSet.count

realSet.isEmpty

// 요소가 포함되어 있는지 확인하기

realSet.contains(2)


// 새로운 요소를 추가하고 삭제

var words = Set<String>()

words.insert("A")

var insertResult = words.insert("Swift")
insertResult.inserted
insertResult.memberAfterInsert


var update = words.update(with: "Swift")
// 저장되어 있는 상태에서 호출하면 현재 저장되어 있는거를 그대로 호출
update = words.update(with: "Apple")
// 반환되는 값을 nil 을 통해서 업데이트 되었는지 확인함


var value = "Swift"
value.hashValue
// set 은 헤시 벨류 값을 통해서 문자열을 비교함

update = words.update(with: value)
value = "Hello"
value.hashValue
update = words.update(with: value)


struct SamepleData: Hashable {
    var hashValue: Int = 123
    var data: String
    
    init(_ data: String) {
        self.data = data
    }
    
    static func == (lhs: SamepleData, rhs: SamepleData) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

var sampleSet = Set<SamepleData>()

var  data = SamepleData("Swift")
data.hashValue

var r = sampleSet.insert(data)

r.inserted
r.memberAfterInsert
sampleSet

words
words.remove("Swift")
words

words.remove("D")
