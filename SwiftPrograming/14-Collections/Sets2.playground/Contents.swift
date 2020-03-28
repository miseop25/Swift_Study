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
 # Comparing Sets
 */

var a: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var b: Set = [1, 3, 5, 7, 9]
var c: Set = [2, 4, 6, 8, 10]
let d: Set = [1, 7, 5, 9, 3]


a == b
b == d


b.elementsEqual(d)
// 이건 순서대로 비교하기 때문에 실행할때 마다 달라 질 수 있다

// 부분집합
a.isSubset(of: a)
a.isSubset(of: d)
// 진 부분집합
a.isStrictSubset(of: a)

// 상위 집합인지 확인
a.isSuperset(of: a)
a.isStrictSuperset(of: a)


a.isSuperset(of: b)
a.isStrictSuperset(of: b)



// 교집합
a.isDisjoint(with: b)
// 공통된 요소가 저장되어 있으면 false 가 출력됨
b.isDisjoint(with: c)
// 서로 교집합이 하나두 없으면 true 를 반환


/*:
 # Combining Sets
 */

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]





// 합집합
var result = b.union(c)
result.sorted()

result = b.union(a)
// 기존 셋은 변경 하지 않음

b.formUnion(c)
// 원본을 건드린다. -> 앞에 form 있는 메소드를 사요하면 된다.

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]


// 교집합을 구하기

result = a.intersection(b)

result = b.intersection(c)


a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

//여집합
result = a.symmetricDifference(b)

// 차집합
result = a.subtracting(b)
