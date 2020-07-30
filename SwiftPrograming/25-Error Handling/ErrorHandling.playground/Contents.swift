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
 # Error Handling
 
 ![throw](throw.png)
 ![throws](throws.png)
 */

// error 프로토콜을 채용하면 에러 형식이 된다.
// 에러를 던진다 해서 throw 를 사용한다.
// 아무데서나 쓰는게 아니라 코드불록이 에러를 던진다고 해야한다.
// 함수 메소드 생성자 클로져에서는 throws 를 사용 혼동되지 않도로 주의 할 것
enum DataParsingError: Error {
    case invalidType
    case invalidField
    case missingRequiredField(String)
       
}

func parsing(data: [String: Any]) throws {
    guard let _ = data["name"] else {
        throw DataParsingError.missingRequiredField("name")
    }
    
    guard let _ = data["age"] as? Int else {
        throw DataParsingError.invalidType
    }
//     throw 는 에러가 발생했을 때만 호출 되어야 함
}







/*:
 # try Statements
 ![try](try.png)
 */

// throw를 호출할때는 try를 주로 사용한다.
// 느낌표 붙인거는 가능한 사용하지 않는 것 이 좋다.

try? parsing(data: [:])

// 에러를 캐치하는 방법!
// 1. do - catch Statements
// 2. try Expression + Opuional binding
// 3. hand over




