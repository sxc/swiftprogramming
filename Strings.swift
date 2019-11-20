import UIKit

let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"
for c  in mutablePlayground {
    print("\(c)")
}

let oneCoolDude = "\u{1F60E}"
let aAcute = "\u{0061}\u{0301}"

for scalar in playground.unicodeScalars {
    print("\(scalar.value) ")
}

let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]
print(fifthCharacter)
let range = start...end
let firstFive = playground[range]

// Silver Challenge Solutions

let empty = ""
let emptyStart = empty.startIndex
print(emptyStart)
let emptyEnd = empty.endIndex
print(emptyEnd)
if emptyStart == emptyEnd {
    print("empty is empty")
}
