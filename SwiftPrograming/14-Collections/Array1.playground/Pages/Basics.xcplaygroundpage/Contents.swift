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
//: [Previous](@previous)

import Foundation

/*:
 # Array Basics
 ## Creating an Array
 */
let nums = [1,2,3]

let emptyArray: [Int] = []
//  빈 리터럴을 사용할 때에는 자료형을 직접 지정해 주어야 함

let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()

let zeroArray = [Int](repeating: 0, count: 10)
// 0이 10개인 배열을 위처럼 만들 수 있다.
/*:
 ## Inspecting an Array
 */
// 배열에 저장된 요소의 숫자 확인
nums.count
// count 를 사용해도 됨
// 배열이 비었는지 확인 하려면

nums.isEmpty
emptyArray.isEmpty



/*:
 ## Accessing Elements
 */
let fruits = ["Apple", "Banana", "Melon"]

fruits[0]
// 이런거는 다른거와 비슷하네
fruits[0+1]
fruits[fruits.count-1]
// 마지막에 저장된 값

fruits[0...1]
// 이런식으로 범위를 지정 할 수 있음
// 잘못된 인덱스와 범위를 전달하면 코드 실행이 바로 멈추어버리기 때문에 조심해야 함

fruits[fruits.startIndex]
fruits[fruits.index(before: fruits.endIndex) ]
// 배열에 저장된 요소에 접근할땐 주로 이런 문법을 사용하게 된다.

fruits.first
fruits.last

emptyArray.first
// first, last 는 모두 옵셔널 값을 리턴함
// 만약 first, last 로 하지않고 서브스크립트로 접근을 하게 되면
// 배열이 비어있는데 접근하고자 한다면 에러가 뜨게 된다.

