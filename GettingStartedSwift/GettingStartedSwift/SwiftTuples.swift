//
//  SwiftTuples.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 16/12/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class SwiftTuples {
	
	func testingSwiftTuples() {
		SwiftTuples.exampleTuple()
	}
	
    class func exampleTuple() {
//      tuples such as the one below can be described as "a tuple of type (int, string)"
        let http404Error = (404, "Not Found")
        
//      You can decompose a tuples contents into separate constants and variables. 
        let (statusCode, errorMessage) = http404Error
        print("the status code is \(statusCode)")
        print("the error message is \(errorMessage)")
        
//        if you are uninterested in a particular part of a tuple then ignore parts with a _
        let (code, _) = http404Error
        
//      You can also access with an index
        print("the error code is \(http404Error.0)")
        
//      You can name individual parts of a tuple when it is created
        
        let http200Status = (statusCode: 200, description: "OK")
        print("Code: \(http200Status.statusCode)")
        print("Description: \(http200Status.description)")
    }
    
}