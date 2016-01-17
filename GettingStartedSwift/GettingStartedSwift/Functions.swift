//
//  Functions.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 21/10/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import UIKit

class Functions: NSObject {

	// A function can take another function as oneof its arguements
	
	func lessThanTen(number: Int) -> Bool {
		return number < 10
	}
	
	func hasAnyMatches (list: [Int], condition:(Int) -> Bool) -> Bool {
		for item in list {
			if condition(item) {
				return true
			}
		}
		return false
	}
	
	// nested functions
	
	func returnFifteen() -> Int {
		var y = 10
		func add() {
			y += 5
		}
		add()
		return y
	}
	
	
	//Fucntions are a firs-Class type. This means that a function can return another function as its value
	func makeIncriment() -> ((Int) -> Int) {
		
		func addOne(number: Int) -> Int {
			return 1 + number
		}
		
		return addOne
	}
}
