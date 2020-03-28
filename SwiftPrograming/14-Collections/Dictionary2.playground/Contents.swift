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
 # Adding Keys and Values
 */

var words = [String: String]()
words["A"] = "Apple"
words
words["B"] = "Banana"

words.count
words

words["B"] = "Ball"
words
// 이미 딕셔너리에는 B 라는 키가 존재하기 때문에 교체됨, 새롭게 추가되는 것이 아님


words.updateValue("Car", forKey: "C")
// C 라는 키가 존재하지 않기 때문에 추가함, 추가할대는 nil 을 리턴함
words
words.updateValue("City", forKey: "C")
// 키가 존재하기 때문에 기존 값을 반환함


/*:
 # Removing Keys and Values
 */

words
words["B"] = nil
words
// nil 을 저장하면 해당 요소가 삭제된다.

words["Z"] = nil
// 존재하지 않는 키를 삭제해도 에러는 발생하지 않는다.

words.removeValue(forKey: "A")
words

words.removeValue(forKey: "A")
// 매소드를 사용해도 마찬가지이다.

words.removeAll()
words
