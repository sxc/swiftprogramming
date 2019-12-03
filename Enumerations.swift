import UIKit

enum TextAlignment: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

var alignment = TextAlignment.right
print("Left has raw value \(TextAlignment.left.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")
//if alignment == .right {
//    print("we should right-align the text!")
//}

let myRawValue = 100

if let myAlignment = TextAlignment(rawValue: myRawValue) {
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}

switch alignment {
case .left:
    print("left aligned")
    
case .right:
    print("right aligned")
    

case .center:
    print("center aligned")
    
case .justify:
    print("justified")
}

enum ProgrammingLanguage: String {
    case swift
    case objectiveC = "objective-c"
    case c
    case cpp = "c++"
    case java
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum Lightbulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150
            
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        
        case .off:
            self = .on
        }
    }
}

var bulb = Lightbulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")


enum ShapeDimensions {
    case point
    
    case square(side: Double)
    
    case rectangle(width: Double, height: Double)
    
    case triangle(a: Double, b: Double, c: Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
            
        case let .square(side: side):
            return side * side
            
        case let .rectangle(width: w, height: h):
            return w * h
            
        case let .triangle(a: a, b: b, c: c):
            return (a * b) / 2
            
            }
        }
    
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
            
        case let .square(side: side):
            return side * 4
            
        case let .rectangle(width: w, height: h):
            return (w + h) * 2
            
        case let .triangle(a: a, b: b, c: c):
            return a + b + c
        }
    }
    }
            



var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point


print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(rectShape.area())")
print("square's perimeter = \(squareShape.perimeter())")

enum FamilyTree {
    case noKnownParents
    indirect case oneKnowParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
        motherName: String, motherAncestors: FamilyTree)
    
}

let fredAncestors = FamilyTree.twoKnownParents(
    fatherName: "Fred Sr.",
    fatherAncestors: .oneKnowParent(name: "Beth", ancestors: .noKnownParents),
    motherName: "Marsha",
    motherAncestors: .noKnownParents)
