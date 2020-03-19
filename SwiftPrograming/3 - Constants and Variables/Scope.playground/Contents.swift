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

/*:
 # Scope
 */
// 범위는 크게 두개로 구분된다.
// Global Scope, Local Scope 로 전역 지역변수로 불린다.


// #1. -> 어떤 Brace 에도 속해져 있지 않기 때문에 전역변수이다.
let g1 = 123
// 여기서는 g2 에는 접근 할 수 없다. 사용하기 전에 먼저 선언을 해야 한다.
func doSomething() {
   // #3 -> Brace 에 속해있기 때문에 지역 Scope에 속한다.
    let l1 = 123
    let g1 = 456
    g1
//     같은 이름의 변수라면 더 가까운 스코프의 것을 출력한다.
    if true {
        l1
        g2
        // g2 는 전역변수이기 때문에 아래에 선언하더라도 충분히 접근 가능하다.
      // #4 3번과는 다른 Local Scope 로 구분된다.
   }
   
   // #5
}

// #2
let g2 = 123

struct Scope {
   // #6
//     여기에는 선언이 완야하는 부분
   func doSomething() {
      // #7
//     메소드의 지역 스코프이기 때문에 에러가  g1, g2를 호출 해도 에러가 발생하지 않는다.
   }
}

doSomething()


