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
	
	func testFunctions() {
		print(self.returnFifteen())
		
		let incriment = self.makeIncriment()
		print (incriment(7))
		
		let numbers = [20,19,7,12]
		self.hasAnyMatches(numbers, condition: self.lessThanTen)
		
		// Functions are a special case of closures. blocks of code that can be called later.
		//You can write a closure without a name by surrounding code with braces ({})
		let mappedNumbers = numbers.map({
			(number:Int) -> Int in
			let result = 3 * number
			return result
		})
		
		print(mappedNumbers)
		
		//You have several Options for writing closures more concisely. When a closures type, is known, ie for a callback for a delegate,
		// you can omit the type of its paramters, its return type, or both.
		
		let mappedNumbers2 = numbers.map({ number in 3 * number })
		print(mappedNumbers2)
		
		let sortednumbers = numbers.sort{ $0 > $1 }
		print(sortednumbers)
	}
	
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
