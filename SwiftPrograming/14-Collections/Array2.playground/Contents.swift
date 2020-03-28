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
 # Adding Elements
 */
var alphabet = ["A", "B", "C"]

alphabet.append("D")
// 마지막요소에 추가 할 때에는 append 를 사용
// alphabet.append(2) ->    자료형이 다른 값을 전달하게 되면 error가 발생하게 된다.

alphabet.append(contentsOf: ["E", "F"])
// 두개 이상의 단어를 추가하고자 할때 이렇게 진행

alphabet.insert("G", at: alphabet.endIndex)

alphabet.insert(contentsOf: ["a", "b", "c"], at: alphabet.startIndex)
// insert 메소드를 사용하면 오버헤드가 발생하게 된다.

alphabet[0...2] = ["x", "y", "z"]
alphabet
// 이렇게 교체 할 수 있다. 서브 스크립트로 진행한다면

alphabet.replaceSubrange(0...2, with: ["a", "b", "c"])
// 이렇게 메소드로 바꿀 수 있다.

alphabet[0...2] = ["z"]
// 이런식으로 특정구간을 통째로 이렇게 할 수 있다.


/*:
 # Removing Elements
 */
alphabet = ["A", "B", "C", "D", "E", "F", "G"]

alphabet.remove(at: 2)
alphabet
// remove 는 삭제된 메소드를 반환함
// 잘못된 인덱스를 전달하면 바로 에러가 뜨게됨

alphabet.removeFirst()

alphabet.removeFirst(2)
// 앞에있는거 2개를 없애줌 이렇게 진행 해줌
alphabet.removeLast()
// 뒤에 있는거 없애주는 거
alphabet.removeAll()

//alphabet.removeLast()
// 배열이 비어있는 상황에서 이 메소드를 사용하면 에러가 뜨게 된다

alphabet.popLast()
// 이 메소드는 마지막 요소를 삭제한 후 배열을 리턴하는데 옵셔널 값이기 때문에 노 상관임

alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.popLast()

alphabet.removeSubrange(0...2)
alphabet
