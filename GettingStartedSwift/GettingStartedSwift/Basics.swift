//
//  Basics.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 21/10/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import UIKit

class Basics: NSObject {
	
	func testBasics() {
		let basics = Basics()
		basics.basicVariables()
		basics.basicStrings()
	}
	
	func greet (name:String, day:String) -> String {
		return "Hello \(name), today is \(day)"
	}

	
	func basicStrings() {
		//Strings
		let label = "the width is "
		let width = 48
		let widthLabel = label + String(width)
		
		// Generates error
		//		let widthLabelError = label + width
		
		print(widthLabel)
		
		let apples = 3
		let oranges = 4
		let appleSummary = "I have \(apples) apples."
		let orangeSummary = "I have \(oranges) oranges."
		
		print(appleSummary)
		print(orangeSummary)
		
		//arrays and dictionaries
		
		var shoppingList = ["catfish", "water", "tulips", "Blue Paint"]
		shoppingList[1] = "bottle of water"
		
		// let creates an immutable array/ dictionary
		//		let immutableShoppingList = ["catfish", "water", "tulips", "Blue Paint"]
		//		immutableShoppingList[1] = "bottle of water"
		
		
		print(shoppingList)
	}
	
	func basicVariables() {
		print("Hello World")
		// var will make a variable
		// the compiler infers the type of myVariable becuase the value is an integer
		var myVariable = 42
		myVariable = 52
		print(myVariable)
		
		// let will make a constant
		// the value of a constant doesnt need to be known at compile time, but a value must be assigned once.
		
		let myConstant = 42
		
		// specifying the type of the constant
		let explicitFloat :Float = 4
		
	}

}
