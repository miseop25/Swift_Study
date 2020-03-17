import UIKit
import Swift

var str = "Hello, playground"

dump(str)

class classTest {
    var name : String?
    var age : Int!
    var someThing : Any?
}

let ct = classTest()
ct.name = "minseop"
ct.someThing = 10
//ct.age = 26
dump(ct)

// 배열 기본 연습
var testArray : Array<Int> = Array<Int>()
testArray.popLast()

for i in 0..<10 {
    testArray.append(i)
}
try testArray.popLast()
testArray
var triAraay = Array<Int>(repeatElement(0, count: 10))

triAraay[1...3] = [1,1,1]

triAraay.remove(at: 0)
triAraay
//testArray.remove(at: 0)
testArray.reverse()
testArray.removeLast()

print(testArray)

var strings : [String] = []
strings.append("hello")
strings.append("hi")
strings.count

strings.sort()

//dict 기본 연습

var anyDict : Dictionary<Int, String> = [Int: String]()

anyDict[0] = "hello"
anyDict[1] = "hi"

if let a : Any = anyDict[0]{
    print("a : ", a)
}

anyDict.removeValue(forKey: 0)
anyDict.isEmpty

print(anyDict)


// 3항 연산의 이해, True 명 왼쪽꺼 False면 오른쪽 사용
let contentHeight = 40
let hasHeader = false
let rowHeight = contentHeight + (contentHeight < 30  ? 50 : 20)

var helloWorld : String = "Hello World!"
helloWorld[helloWorld.startIndex]
helloWorld[helloWorld.index(before: helloWorld.endIndex)]
helloWorld[helloWorld.index(helloWorld.startIndex, offsetBy: 4)]
helloWorld.insert(contentsOf: " swift", at: helloWorld.endIndex)

let indexTest = helloWorld.index(of: "l") ?? helloWorld.endIndex
let begining = helloWorld[indexTest...]
helloWorld.removeAll()
print(begining)


type(of: begining)
let newString = String(begining)
type(of: newString)





