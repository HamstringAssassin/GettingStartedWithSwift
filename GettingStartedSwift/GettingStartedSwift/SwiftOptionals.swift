//
//  SwiftOptionals.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 16/12/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class SwiftOptionals {
	
	func testingSwiftOptions() {
		SwiftOptionals.optionalsExample()
		SwiftOptionals.implicitUnwrappedOptionals()
	}
	
    class func optionalsExample() {
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        print("Possible number is \(possibleNumber)")
        print("converted number is \(convertedNumber)")  //prints the integer 123 becuase the string 123 can be converted into an integer.
        
        
        
        let possibleNumberTwo = "Two"
        let possibleConvertedNumberTwo = Int(possibleNumberTwo)
        
        print("Possible Number Two: \(possibleNumberTwo)")
        print("Possible Converted Number Two: \(possibleConvertedNumberTwo)")   // prints nil. the value "two" cannot be converted into an integer by the Int initializer.
                                                                                //So it returns an optional.
        
//        convertedNumber and possibleConvertedNumberTwo are inferred to be fo type "Int?", or optional Int

//        You can use if statements to find out if a value contains nil
        if convertedNumber != nil {
            print("Possible number contains something... \(convertedNumber)")
        }
//        the method above is also known as forced unwrapping
        
//        optional binding
        if let convertedNumberTwo = Int(possibleNumberTwo) {
            print("Posssible number two has a value of \(convertedNumberTwo)")
        } else {
            print("Unable to convert the value of possibleNumberTwo to an int as its value is \(possibleNumberTwo)")
        }
        
//        You can use multiple optional bindings in an if along with a where to check for boolean
        if let numberOne = Int("4"), numberTwo = Int("42") where numberOne < numberTwo {
            print("\(numberOne) < \(numberTwo)")
        }
    }
    
    class func implicitUnwrappedOptionals() {
        /**
         Sometimes an optional will always have a value, after it is first set. In these cases it can be
         useful to avoid the check wnehn unwrapping. These kinds of optionals are called implicit unwrapped optionals.
         You write an implicitly unwrapped optional by using an exclamation point(!) instead of a question mark (?)
         */
        let possibleString:String? = "an optional string"
        let forcedString: String! = possibleString //requires an exclamation point
        print(forcedString)
        
        let assumedString: String! = "an implicitly unwrapped optional"
        let implicitString: String = assumedString //No need for an exclamation point
        print(implicitString)
        
//        trying to access an implicitly unwrapped optional when it is nil will result in a runtime error. 
//        see commented code below
//        var implicitString2: String! = nil
//        print(implicitString2) //fatal error: unexpectedly found nil while unwrapping an Optional value
        
        /**
        *  
        You can still check an implicitly defined String the way you would like a normal optional, as
        well as checking with optional binding
        */
        
        if assumedString != nil {
            print(assumedString)
        }
        if let definiteString = assumedString {
            print(definiteString)
        }
        
    }
}