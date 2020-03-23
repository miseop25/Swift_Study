//: [Previous](@previous)

import Foundation


print("Start")


// 코드를 지연 시켜 보겠다

DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
    print("end")
})

DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
    print("단순한 코드 자동완성")
}
// 이처럼 문법 최적화를 Xcode의 자동완성 기능을 통해서 진행 할 수 있다.


