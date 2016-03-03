//
//  CurryingFunctions.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 03/03/2016.
//  Copyright © 2016 CodeBiscuits. All rights reserved.
//

import Foundation

class CurryingFunctions {
	
	func testCurryingFunctions() {
		let sum = add(2, b: 3)
		print(sum)
	}
	
	/*
		Note: the following was taken from a tutorial here: 
	
		https://robots.thoughtbot.com/introduction-to-function-currying-in-swift
	
	*/
	
	/**
	*	Basic function that takes two ints and returns an int
	*	of type (int, int) -> int
	*/
	func add(a: Int, b: Int) -> Int {
		return a + b
	}
	
	
	
}