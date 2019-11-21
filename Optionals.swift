import UIKit

var errorCodeString: String?
errorCodeString = "404"
var errorCode: String?
errorCode?.append("Empty?")
errorCode

//if errorCodeString != nil {
//    let theError = errorCodeString!
//    print(theError)
//}

// optional binding

if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
   
        print("\(theError): \(errorCodeInteger)")
    
}

// implicitly unwrapped optional
var errorCodeString2: String! = nil
//errorCodeString2 = "404"
//print(errorCodeString2)

//let anotherErrorCodeString: String = errorCodeString2
let yetAnotehrErrorCodeString = errorCodeString2

// optional chaining

var errorDescription: String?
if let theError = errorCodeString, let errorCodeInterger = Int(theError), errorCodeInterger == 404 {
    errorDescription = "\(errorCodeInterger + 200): resource was not found."
}

var upCaseErrorDescription = errorDescription?.uppercased()
errorDescription

upCaseErrorDescription?.append(" PLEASE TRY AGAIN")
upCaseErrorDescription


var description: String
let someDescription = errorCode ?? "No error"

