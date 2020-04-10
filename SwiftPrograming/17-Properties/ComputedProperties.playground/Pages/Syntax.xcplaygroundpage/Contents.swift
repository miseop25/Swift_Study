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
 # Computed Properties
 ![computed](computed.png)
 */
// 계산 속성
// 다른 속성을 기반으로 속성이 결정된다는 의미임 -> 속성이 결정될때 마다 다르게 설정될 수 있음
// 계산속성은 항상 변수로 진행을 해야한다.

class Person {
   var name: String
   var yearOfBirth: Int

   init(name: String, year: Int) {
      self.name = name
      self.yearOfBirth = year
   }
    
    var age: Int {
//        Int 다음에 할당 연산자가 없으니 일기 전용 계산 속성인 것이다.
//        할당연산자가 있으면 클로져!!
        let calender = Calendar.current
        let now = Date()
        let year = calender.component(.year, from: now)
        return year - yearOfBirth
    }
}

let p = Person(name: "minseop", year: 1995)
p.age





/*:
 ## Read-only Computed Properties
 ![readonly-1](readonly-1.png)
 ![readonly-2](readonly-2.png)
 */
// get 키워드를 생략 할 수 있음











