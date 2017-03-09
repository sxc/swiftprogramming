//: Playground - noun: a place where people can play

import Cocoa
//
//enum TextAlignment: Int {
//    case left
//    case right
//    case center
//    case justify
//}

//var alignment: TextAlignment = TextAlignment.left


enum TextAlignment: Int {
    case left       = 20
    case right      = 30
    case center     = 40
    case justify    = 50
}


var alignment = TextAlignment.justify

print("Left has raw value \(TextAlignment.left.rawValue)")
print("Right has raw value \(TextAlignment.right.rawValue)")
print("Center has raw value \(TextAlignment.center.rawValue)")
print("Justify has raw value \(TextAlignment.justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")


//alignment = .right

//if alignment == .right {
//    print("We should right-align the text!")
//}

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

let myRawValue = 30
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    print("successfully converted \(myRawValue) into a TextAlignment")
    
} else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}


enum ProgrammingLanguage: String {
    case swift
    case objectiveC = "objective-c"
    case c
    case cpp        = "c++"
    case java
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum Lightbulb {
    case on
    case off
    
    func surfaceTemerature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
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

var bulbTemperature = bulb.surfaceTemerature(forAmbientTemperature: ambientTemperature)

bulb.toggle()
bulbTemperature = bulb.surfaceTemerature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

enum ShapeDimensions {
    
    case square(side: Double)
    
    case rectangle(width: Double, height: Double)
    
    case point
    
    case righttriangle(side1: Double, side2: Double)
    
    func area() -> Double {
        switch self {
        case let .square(side: side):
            return side * side
            
        case let .rectangle(width: w, height: h):
            return w * h
        
        
        case .point:
            return 0
            
        case let .righttriangle(side1: side1, side2: side2):
            return (side1 * side2) / 2
            
        
        }
    }
    
    func perimeter() -> Double {
        switch self {
        case let .square(side: side):
            return side * 4
            
        case let .rectangle(width: w, height: h):
            return (w + h) * 2
            
        case .point:
            return 0
            
        case let .righttriangle(side1: side1, side2: side2):
            return (side1 + side2 + sqrt(side1 * side1 + side2 * side2))
        }
    }
    
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point
var righttriangleShape = ShapeDimensions.righttriangle(side1: 3.0, side2: 4.0)



print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
print("right triangel area = \(righttriangleShape.area())")


enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
}

let fredAncestors = FamilyTree.twoKnownParents(fatherName: "Fred Sr.", fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents),motherName: "Marsha", motherAncestors: .noKnownParents)

// Bronze Challenge
print("square's perimeter = \(squareShape.perimeter())")
print("rectangle's perimeter = \(rectShape.perimeter())")
print("point's perimeter = \(pointShape.perimeter())")
print("right rectangle's perimeter = \(righttriangleShape.perimeter())")

// Silver Challenge
// right triangle








