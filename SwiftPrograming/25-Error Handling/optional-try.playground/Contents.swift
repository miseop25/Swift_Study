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
 # optional try
 ![optional-try](optional-try.png)
 */

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
   
   // Parsing
}

// forced error는 실행을 중단함 -> 런터임 에러가 발생하게 된다.

if let _ = try? parsing(data: [:]) {
    print("success")
}else {
    print("error")
}


do {
    try parsing(data: [:])
    print("success")
} catch {
    print("error")
}

try? parsing(data: [:])

try! parsing(data: ["name":"minseop", "age": 26])
try! parsing(data: [:])
// forced try는 값을 전달하지 않고 바로 에러를 발생시켜 버림! -> 런타임 에러 발생한다.
