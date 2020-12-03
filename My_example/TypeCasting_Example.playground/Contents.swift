import Cocoa

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

let mySong = Song(name: "노래", artist: "가수")
if mySong is Media {
    print("true")
}else{
    print("False")
}

let m = Media(name: "test")

if let downCasting = m as? Song {
    print(downCasting.name)
}else {
    print(false)
}

if let upCasting = mySong as? Media {
    print("Upcasting 성공", upCasting.name)
    
}else {
    print("Upcasting 실패")
}

