import UIKit

func printGreeting() {
    print("Hello, playground.")
}
printGreeting()

//func printPersonalGreeting(name: String) {
//    print("Hello \(name), welcome to your playground.")
//}
//printPersonalGreeting(name: "Matt")

//func printPersonalGreeting(to name: String) {
//    print("Hello \(name), welcome to your playground.")
//}
//printPersonalGreeting(to: "Matt")

// Variadic
func printPersonalGreetings(to names: String...) {
    for name in names {
        print("Hello \(name), welcome to the playground.")
    }
}
printPersonalGreetings(to: "Alex", "Chris", "Drew", "Pat")

//func divisionDescriptionFor(numerator: Double, denominator: Double) {
//    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)")
//}
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0)

//func divisionDescriptionFor(numerator: Double,
//                            denominator: Double,
//                            withPunctuation punctuation: String = ".") {
//    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
//}
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!")

func divisionDescriptionFor(numerator: Double,
                            denominator: Double,
                            withPunctuation punctuation: String = ".") -> String {
    return "\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)"
}
print(divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!"))

var error = "The request failed: "
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error

func areaOfTriangleWith(base: Double, height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTriangleWith(base: 3.0, height: 5.0)

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number  in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens) the odd numbers are: \(theSortedNumbers.odds)")

func grabMiddleName(fromFullName names: (String, String?, String)) -> String? {
    return names.1
}

let middleName = grabMiddleName(fromFullName: ("Matt", nil, "Mathias"))
if let theName = middleName {
    print(theName)
}

let anotherMiddleName = grabMiddleName(fromFullName: ("Jim", "Nick", "Morrison"))
if let anotherName = anotherMiddleName {
    print(anotherName)
}

func greetByMiddleName(fromFullName name: (first: String,
                                           middle: String?,
                                           last: String)) {
    guard let middlename = name.middle else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(fromFullName: ("Matt", "John", "Mathias"))
