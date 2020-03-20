import UIKit

/*:
 # Short-circuit Evaluation
 */





// 스위프트가 조건식을 포함하는 방법에 대해서 알아보도록 하자

var a = 1
var b = 1

func updateLeft() -> Bool {
    a += 1
    return true
}

func updateRight() -> Bool {
    b += 1
    return true
}

if updateLeft() || updateRight() {
//     사실상 이 거는 거의 참임
}

a
b
// 단락평가! 이미 updateLeft 가 참이기 때문에 b 가 증가가 되지 않은 거!
// 논리식이 최소한으로 작동하기 위해 진행되는 것이 단락 평가이다.
// 즉 or는 하나만 True 면 되기 때문에 뒤에거는 실행 하지 않은것이다. and 연산도 마찬가지이다.

// side effect
// 사이드 이펙트는 값이 변경되는 것을 말하는데 위에서는 한번의 사이드 이펙트만 발생되었다.
// 사이드 이펙트는 항상 우리가 예측가능한 값을 추출 해야 함
// 실행 될지 말지 잘 모르는 경우에 변수의 값을 변경하는 것은 좋지 못하다.
