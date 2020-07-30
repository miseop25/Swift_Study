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
 # defer Statements
 ![defer](defer.png)
 */


// defer 문은 코드의 실행을 스코프가 실행하는 시점으로 연기시킨다.
// defer문이 폼함된 스코프의 실행이 종료될때 까지 연기된다.

func processFile(path: String ) {
    print("1")
    let file = FileHandle(forReadingAtPath: path)
    
    defer {
        print("2")
        file?.closeFile()
//         defer 문의 시점은 함수가 종료되는 시점에 실행된다.
//         함수 코드가 아무리 복잡하더라도 언제나 close 파일이 실행된다.
//        스코프 시작지점에서 defer 문을 구현한다.
    }
    
    if path.hasSuffix(".jpg") {
        print("3")
        return
    }
    print("4")
    
}
processFile(path: "file.swift")
print("==============")
processFile(path: "file.jpg")



func testDefer() {
    defer {
        print(1)
    }
    defer {
        print(2)
    }
    defer {
        print(3)
    }
}

testDefer()
// defer문은 여러개 써도 무방하나 하나의 defer 문만 사용하는 것이 좋다.
// defer 문을 여러개 사용했을 때에는 스택처럼 쌓이게 된다. FILO 방식임
