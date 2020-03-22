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

struct Contacts {
   var email: [String: String]?
   var address: String?
    
    func printAddress() {
        return print(address ?? "no address")
    }
}

struct Person {
   var name: String
   var contacts: Contacts?

   init(name: String, email: String) {
      self.name = name
      contacts = Contacts(email: ["home": email], address: "Seoul")
   }
    func getComtacts() -> Contacts? {
        return contacts
    }
}


/*:
 # Optional Chaining
 */

// 체인은 다수의 컴포넌트가 연결된것
// 옵셔널 체이닝은 다수의 옵셔널을 연달아서 호출하는 것!
// 1. 옵셔널 체이닝의 결과는 항상 옵셔널이다.
// 하나라도 nil 이면 이어지는건 평가하지 않고 nil 을 반환한다.

var p = Person(name: "James", email: "richard25@naver.com")
let a = p.contacts?.address
// 이건 옵셔널 체이닝이 아니다.

var optional_p: Person? = Person(name: "James", email: "richard25@naver.com")
let b = optional_p?.contacts?.address
// 이런 방식으로 언웹핑 하는 것!
// 옵셔널p에 인스턴스가 포함되어 있다면 컨텍트에 접근해서 값을 전달하고
// 아니면 nil 을 전달한다.

//optional_p = nil
let c = optional_p?.contacts?.address
// 가장 마지막의 표현식은 String 이지만 옵셔널 형식으로 접근하고 있기 때문에
// 반환값은 옵셔널 스트링이 된다
// 만약 contacts에 nil 이라면 nil이 반환된다.

// 옵셔널 형식으로 선언되어 있는 값을 통해서 속성이나 값을 호출하려먼 ? 를 붙여야 한다.
// 단 마지막에 붙어 있는 경우는 제외된다.

p.getComtacts()?.address
// 메소드의 반환값이 오셔널일때 괄호 뒤에 물음표를 붙인다.

let d = p.getComtacts()?.printAddress()
// 여기서 d 의 형식은 void 형식이다. -> 값을 리턴하지 않았음


if p.getComtacts()?.printAddress() != nil {
    
}

if let _ = p.getComtacts()?.printAddress() {
//    바인딩 성공 여부만 판단을 한것
}

let e = p.contacts?.email?["home"]
// 스퀘어 브라켓 앞에 붙여야 한다! 키를 통해서 값을 얻어 올 때

p.contacts?.email?["home"]?.count
// 추가로 메소드나 값을 호출 할때

p.contacts?.address = "Deagu"
p.contacts?.address


optional_p?.contacts?.address = "Young in"
optional_p?.contacts?.address

// 만약 최종 속성에 접근하였다면 값을 저장하고 아니면 아무것도 하지 않는다.
// fix it 을 사용하면 정확한 위치에 물음표를 추가해 준다.


// ** 1. 옵셔널 체이닝의 결과는 항상 옵셔널이다!!
// ** 2. 옵셔널 체이닝중 하나가 nil 이라면 nil 을 반환한다.


