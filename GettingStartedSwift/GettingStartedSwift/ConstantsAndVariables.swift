//
//  ConstantsAndVariables.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 01/12/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class ConstantsAndVariables {
	
	let maximumNumberOfLoginAttempts = 10
	var currentLoginAttempt = 0
	
	var x = 0.0, y = 0.0, z = 0.0
	
	// Stored properties without an initial value prevent systesized initialisers
	var welcomeMessage:String = ""
	
	func printingConstants() {
		var friendlyWelcome = "Hello!"
		friendlyWelcome = "Bonjour!"
		let languageName = "Swift"
//		languageName = "Swift++" generates compile-time error. Cannot change a constant
		print(friendlyWelcome)
		
//		swift uses string interpolation
		print("The current value of friendly Welcome is \(friendlyWelcome)")
	}
    
    class func typeInference() {
        let pi = 3.14159
        // pi is infered to be type Double
        let anotherPi = 3 + 0.14159
        print(anotherPi)
    }

    class func IntMaxes() {
        print(UInt.max)
        print(UInt.min)
        
        print(UInt8.max)
        print(UInt8.min)
        
        print(UInt16.max)
        print(UInt32.max)
        print(UInt64.max)
        
        print(Int.max)
    }
}