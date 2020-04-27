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
 # Automatic Reference Counting
 */
// 메모리 관리 모델
// 스택에 저장된 거는 자동으로 없어짐
// 힙에 적재되어 있는 거를 관리하는 것입 -> Class에 상관된 거를 관리한다.
// swift 에서는 ARC 만을 사용한다.
// 소유 정책을 자동으로 처리한다.

// ARC 가 진행하는 참조 형식
// 1. Strong Reference 강한 참조 형식
//    소유자가 존재할때 참조 카운트가 1씩 증가하고 빼면 1씩 감소
//    인스턴스는 소유자가 존재하지 않으면 삭제된다.

class Person {
   var name = "John Doe"
   
   deinit {
      print("person deinit")
   }
}




var preson1: Person?
var preson2: Person?
var preson3: Person?

preson1 = Person()
preson2 = preson1
preson3 = preson1

// 참조 카운트가 1씩 증가했음 총 3인됨

preson2 = nil
preson1 = nil
// nil 을 저장한다는 것은 소유권을 포기 한다는 뜻임!
// 즉 참조 카운트가 1씩 감소하게 된다.
preson3 = nil

