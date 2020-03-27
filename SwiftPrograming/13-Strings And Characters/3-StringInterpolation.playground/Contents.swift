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
 # String Interpolation
 ![placeholder](placeholder.png)
 */

let size = 12.34

var str = "123.34KB"
str = String(size) + "KB"
// 이렇게 하는 경우는 거의 없다.

// 앞으로는 이렇게 할 것이다.
str = "\(size)KB"
// 이전과 결과는 동일하지만 코드가 훨씬 단순해 졌다!
// 직관적이지만 원하는 포멧을 만들 수는 없다. ex) 소수점 몇번째 자리까지 출력 같은거는 힘듬



/*:
 ## Format Specifier
 ![format-specifier](format-specifier.png)
 */
// 내가 원해는 포멧으로 만들기 위해 이거를 사용
str = String(format: "%.1fKB", size)
// .1 은 소수 첫번째 자리까지 f : 실수를 의미한다.

String(format: "Hello, %@", "Swift")
// &@ : 문자열을 리턴할 때
String(format: "%d", 12)
// %d : 장수를 리턴할때
String(format: "%f", 123.45)
// . 을 지정해 주지 않으면 프레임 워크가 알아서 함
String(format: "%10f", 123.45)
String(format: "%010.3f", 123.45)


let firstName = "Min-Seop"
let lastName = "Kim"

let korFormet = "그녀의 이름은 %2$@ %1$@ 입니다."
// 이렇게 하면 첫번째 파라키터와 두번째 파라미터가 교체되서 진행된다.
let engFormet = "Her name is %@ %@."

String(format: korFormet, firstName, lastName)
String(format: engFormet, firstName, lastName)


//str = "\"
// \ 는 특별한 용도로 사용되기 때문에
// \\ 를 써서 표현을 해야 한다.
str = "\\"

print("a\tb")
// \t : tab 을 추가한것
// \n : enter

print("\"Hello He said.\"")
// 큰따움표나 작은 따움표를 넣으려면 \ 를 끼고 넣어야 한다.
