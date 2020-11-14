import UIKit

var str = "Hello, playground"
print(str)

var cnt = 0
let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
    cnt += 1
    print(cnt)
    if cnt > 5 {
        timer.invalidate()
        print("timer Finsed")
    }
}
timer.tolerance = 0.1
timer.fire()

