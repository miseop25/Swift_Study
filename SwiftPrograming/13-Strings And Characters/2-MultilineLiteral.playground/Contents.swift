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
 # Multiline String Literal
 */

let loremIpsum = "adfdasfdsafkjhfj \n adshfjkhsfkjhasdjkfhkjsahf"
// 이런 것들은 싱글라인 리터럴임

let multLine = """
    hello
    hihihihih
        dasdasd
    """
//이런식으로 진행을 할 수 있다.
// 큰따운표 위치에 조심해야 함, 큰따움표 세개 다음에 새로운 Line 에서 진행을 해야 한다.
print(multLine)
// 들여쓰기가 되어서 진행
// 마지막줄에 있는 큰따움표가 들여쓰기 위치를 진행한다.
// 마지막 큰따움표는 첫번째 줄의 동일선상에 있거나 외쪽에 있어야 한다.
