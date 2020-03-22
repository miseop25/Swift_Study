import UIKit

/*:
 # Nil-Coalescing Operator
 */

var msg = ""
var input: String? = "Swift"

if let inputName = input {
    msg = "Hello, " + inputName
}else {
    msg = "Hello, Stranger"
}
print(msg)










/*:
 ## Syntax
 ````
 a ?? b
 OptionalExpression ?? Expression
 ````
*/
// 값이 있는지 확인하고 아닐때 뭘 해야 할지 일일이 해주지 않아도 된다.
// a 와 b 는 옵셔널을 제외하고 같은 형식이여야 한다.

input = nil
msg = "Hello, " + (input ?? "Stranger")
// input 이라는 옵셔널 값에 값이 저장되어 있으니까
// input 거를 벗겨서 리넡하게 된다.























