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
 # Backwards Option
 */

let korean = "행복하세요"
let english = "Be happy"
let arabic = "كن سعيدا"

// 읽는 방향에 따라 다르기 때문에
// swift 는 Leading(시작점) Trailing(종단점) 을 기준으로 검색하게된다.
// 아랍어는 리딩점이 오른쪽부터 시작이다.

if let range = english.range(of: "p"){
    english.distance(from: english.startIndex, to: range.lowerBound)
}
if let range = english.range(of: "p", options: [.backwards]){
    english.distance(from: english.startIndex, to: range.lowerBound)
}
// 백워드 옵션을 넣어주면 뒤에서부터 작업을 진행하게 된다.

//: [Next](@next)
