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
 # Syntax Optimization
 */

let products = [
   "MacBook Air", "MacBook Pro",
   "iMac", "iMac Pro", "Mac Pro", "Mac mini",
   "iPad Pro", "iPad", "iPad mini",
   "iPhone Xs", "iPhone Xr", "iPhone 8", "iPhone 7",
   "AirPods",
   "Apple Watch Series 4", "Apple Watch Nike+"
]

// 문법 최적화!!!!
// 스위프트는 단순한 코드를 좋아하기 때문!! 클로져가 많이 사용된다.

var proModels = products.filter({ (name: String) -> Bool in
    return name.contains("Pro")
}) // 문법 최적화 거치지 않는 것, 이것이 정식 문법임

// 1. 파라미터 형식과 리턴의 형식을 지울 수 있다.
// 2. 파라미터의 이름은 숏핸드 아규면트로 대체 가능 -> in 워드 없앨 수 있다
// 숏핸드 아규먼트 문법은 달러($) 문자와 숫자의 조합으로 이루어져 있다
// 달러 0 : 첫번째 파라미터, ...
// 3. 클로져에 포함된 return이 단일 리턴문 이라면  return을 생략 할 수 있다 -> 인플리시 리턴이라고 함
// 4. 클로져 파라미터가 마지막 파라미터라면 트레일링 클로져로 바꾼다 -> 괄호() 뒤에 {} 쓴거 오는거 & 아규먼트 레이블(bt:) 삭제
// 5. 괄호() 사이에 다른 파라미터가 없으면 괄호를 생략 할 수 있다.
products.filter {
    $0.contains("Pro")
}
// 이게 문법 최적화를 진행 한 것이다!!




print(proModels)

print(proModels.sorted())

proModels.sort(by: { (lhs: String, rhs: String) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedAscending
})

proModels.sort{
    $0.caseInsensitiveCompare($1) == .orderedAscending
}

proModels.sort(by: {(x: String, y: String) -> Bool in
    return x.caseInsensitiveCompare(y) == .orderedAscending
})
print(proModels)


