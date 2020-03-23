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
 # Tuples
 
 ## Tuple Expression
 ![tuple-expr](tuple-expr.png)
 */
let i = 12
// int 는 스칼라 값인데 하나의 값을 저장할 수 있기 때문이다.
let j = (12, 34)
// 튜플은 컴파운드 타입! ,2개 이상의 값을 저장 할 수 있다.

let data = ("<html>", 200, "OK", 12.34)
// 튜플을 저장하는 맴버의 수는 튜플을 만들때 고정되기 때문에 추가하거나 삭제 할 수 없다





/*:
 ## Explicit Member Expression
 ![eme](eme.png)
 */
data.0
// 튜플에 저장되어 있는 데이터를 읽어 올 때에는 이렇게 인덱스 값처럼 읽는다!!
data.1
data.2
data.3

//data.1 = 404
// data 가 let 으로 되어있으면 변경은 당연히 안된다

var mutableTuple = data
// mutable : 가변성, 값을 바꿀 수 있는지 알려주는 것
// 위처럼 저렇게 복사가 된다.
mutableTuple.1 = 300
mutableTuple
// 지금까지 배운거는 unnamed 튜플이다. 튜플의 이름이 없는것











