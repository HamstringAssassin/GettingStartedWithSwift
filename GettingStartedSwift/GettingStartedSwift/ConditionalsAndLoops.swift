//
//  ConditionalsAndLoops.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 21/10/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class ConditionalsAndLoops {
	
	func testConditionalsAndLoops(){
		self.forloops()
		self.ifLoops()
		self.switches()
		self.controlFlow()
		self.whileAndRepeat()
		self.ranges()
	}
	
	func ranges () {
		//Ranges. You can keep an index in a loop by using ..< to make a range of indexes or by writing an explicit initilization, condition and incriment
		
		
		var firstForLoop = 0
		for i in 0..<4 {
			firstForLoop += i
		}
		print(firstForLoop)
		
		var secondForLoop = 0
		for var i = 0; i < 4; i++ {
			secondForLoop += i;
		}
	}
	
	func whileAndRepeat (){
		//Using while to repeat a block of code until a condition is met
		
		var n = 2
		while n < 100 {
			n = n * 2
		}
		print(n)
		
		//		swift 2.0
		//				var m = 2
		//				repeat {
		//					m = m * 2
		//				} while m < 100
		//				print(m)
	}
	
	func controlFlow () {
		let interestingNumbers = [
			"Prime":[2,3,5,7,11,13],
			"Fibonacci":[1,1,2,3,5,8,13,21],
			"Square":[1,2,4,9,16,25],
		]
		var previousLargest = [String:Int]()
		var largest = 0
		for (kind, numbers) in interestingNumbers {
			for number in numbers {
				if number > largest {
					previousLargest[kind] = number
					print(previousLargest)
					largest = number
				}
			}
		}
		print(largest)
	}
	
	func switches () {
		//Switches
		// Switches suppoer any kind of dsata and a wide variety of comparison operations - they arent limited
		// to integers and tests for equality
		
		let vegtable = "red pepper"
		var vegtableComment: String
		switch vegtable {
		case "celary":
			vegtableComment = "Add some raisins and make ants on a log"
		case "cucumber", "watercress":
			vegtableComment = "That would make a good tea sandwich."
		case let x where x.hasSuffix("pepper"):
			vegtableComment = "Is it a spicy \(x)?"
			
		default:
			vegtableComment = "Everything tastes good in soup"
		}
		print(vegtableComment)
		
	}
	
	func ifLoops(){
		// You can use if and let together to with with calues that might be missing.
		// These values are represented as optionals
		
		let optionalString: String? = "hello"
		print(optionalString == nil)
		
		let optionalName: String? = "John Appleseed"
		var greeting = "Hello!"
		if let name = optionalName {
			greeting = "Hello, \(name)"
		}
		print(greeting)
		
	}
	
	func forloops () {
		//Control Flow
		// use if, switch for conditional, for-in, for while, repeat-while to make loops
		
		let individualScores = [75,43,103,87,12]
		
		var teamScore = 0
		
		for score in individualScores {
			if score > 50 {
				teamScore += 3
			} else {
				teamScore += 1
			}
		}
		print(teamScore)
	}
}
