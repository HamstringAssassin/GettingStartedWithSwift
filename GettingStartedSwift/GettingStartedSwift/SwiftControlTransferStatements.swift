//
//  SwiftControlTransferStatements.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 16/01/2016.
//  Copyright © 2016 CodeBiscuits. All rights reserved.
//

import Foundation

class SwiftControlTransferStatements {
    
    /**
    *  Examples of control transfer statements include
    contine
    break 
    fallthrough
    return
    throw
    */
	
	func testingSwiftcontrolTransferStatements() {
		SwiftControlTransferStatements.continueExample()
		SwiftControlTransferStatements.fallthroughExample()
		SwiftControlTransferStatements.greet(["name":"john"]);
		SwiftControlTransferStatements.greet(["name":"john", "location":"Dublin"])
	}
    
    class func continueExample(){
        /// the confinue statement tells a loop to stop what it is doing and start again
        
        let puzzleInput = "great minds think alike"
        var puzzleOutput = ""
        
        for character in Substring(puzzleInput) {
            switch character {
                case "a","e","i","o","u"," ":
                continue
            default:
                puzzleOutput.append(character)
            }
        }
        print(puzzleOutput)
    }
    
    class func fallthroughExample() {
        let integerToDescribe = 5
        var description = "the number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2,3,5,7,11,13,17,19:
            description += " a prime number and also"
            fallthrough
        default:
            description += " an integer"
        }
        print(description)
    }
    
    class func greet(_ person:[String : String]) {
        guard let name = person["name"] else {
            return
        }
        
        print("Hello \(name)!")
        
        guard let location = person["location"] else {
            print("I hope the weather is nice near you")
            return
        }
        
        print("I hope the weather is nice in \(location).")
    }
    
    
}
