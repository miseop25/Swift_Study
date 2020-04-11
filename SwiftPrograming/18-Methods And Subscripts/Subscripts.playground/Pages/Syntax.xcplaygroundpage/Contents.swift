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
 # Subscripts
 ![subscript](subscript.png)
 */

let list = ["A", "B", "C"]
list[0]
// 이런것이 바로 서브스크립트 였음
// 구현되어 있는 거를 사용했다면 이제는 만들어 보는거임





/*:
 ![subscript-syntax](subscript-syntax.png)
 */
// 리턴형이 저장하는 값이기 때문에 중요하다!!
// 그래서 리턴형이 없으면 안된다.

class List {
    var data = [1,2,3]
    
    subscript(i index: Int) -> Int {
        get {
            return data[index]
        }
        set {
           data[index] = newValue
        }
    }
}

var l = List()
l[i: 0]
l[i: 1] = 10
// i (아구면트 레이블이 있다면 위에처럼 사용)
// 하지만 많이 사용하지는 않는다
l.data


struct Matric {
    var data =  [[1,2,3],
                [4,5,6],
                [7,8,9]]
    subscript(row: Int, col: Int) -> Int? {
        if row > 2 || col > 2 {
            return nil
        }else {
            return data[row][col]
        }
        
    }
}

let m = Matric()
m[0,3]
// 서브스크립트로 두개이상의 배열의 값을 쓸려면 "," 로 구분해서 사용한다.

