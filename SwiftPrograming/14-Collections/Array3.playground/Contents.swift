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
 # Comparing Arrays
 */

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]

a == b
a != b
// 개별요소와 저장순서 까지 비교하게 된다.

a.elementsEqual(b)
a.elementsEqual(b) { (lhs, rhs) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedSame
}








/*:
 # Finding Elements
 */
let nums = [1,2,3,4,5,6,7,8,9,0,1, 2]
nums.contains(1)
nums.contains(20)
// 배열에 값이 있는지? 확인하는 것이다.

nums.contains { (n) -> Bool in
    return n % 2 == 0
}

nums.first { (n) -> Bool in
    return n % 2 == 0
}

nums.firstIndex { (n) -> Bool in
    return n % 2 == 0
}

nums.firstIndex(of: 1)
// 앞에서부터 탐색
nums.lastIndex(of: 1)
// 뒤에서부터 탐색

/*:
 # Sorting on Array
 */
// 배열을 동사 정렬하면 직접 정렬
// ed 로 끝나면 배열을 리턴
nums.sorted()
nums

nums.sorted { (a, b) -> Bool in
    return a > b
}
nums.sorted().reversed()
[Int](nums.sorted().reversed())


var mutableNums = nums

mutableNums.sort()
mutableNums.reverse()
// 배열을 직접 건드림, 새로운 배열을 리턴하지 않는다.

mutableNums.swapAt(0, 1)

mutableNums.shuffle()
mutableNums
// 셔플은 요소의 순서를 랜덤으로 바꾸어 주는 메소드임
