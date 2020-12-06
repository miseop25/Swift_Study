import Cocoa

if 2 is Int {
    print(" 2 is Int")
}

class Person {
    let name: String
    init(name : String) {
        self.name = name
    }
}

class Media {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Song : Media {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}
class DownMedia: Media {
    func printName() -> Void {
        print(self.name)
    }
}

let mySong = Song(name: "노래", artist: "가수")
if mySong is Media {
    print("true")
}else{
    print("False")
}

let m : Media = DownMedia(name: "다운캐스팅")

if let downCasting = m as? DownMedia {
    print(type(of: downCasting), type(of: m))
    print(downCasting.name)
    downCasting.name
}else {
    print(false)
}

if let upCasting = mySong as? Media {
    print("Upcasting 성공", upCasting.name)
    
}else {
    print("Upcasting 실패")
}

if m is Media {
    print("TRUE")
}

