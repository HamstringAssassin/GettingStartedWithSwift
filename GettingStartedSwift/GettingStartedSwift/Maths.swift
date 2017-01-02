//
//  Maths.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 21/10/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class Maths {

	func testMaths(){
		self.printStatistics()
		print(self.sumOf())
		print(self.sumOf(42, 35, 77))
		print("Median is : \(self.calculateMedian(12,34,23,34,56,34)) ")
	}
	
	func calculateMedian(numbers:Int...) -> Int {
		var median = 0
		var num = 0
		var sum = 0
		for number in numbers {
			sum += number
			num += 1
		}
		median = sum / num
		return median
	}
	
	func sumOf(numbers:Int...) -> Int {
		var sum = 0
		for number in numbers {
			sum += number
		}
		return sum
	}
	
	func printStatistics () {
		let statistics = calculateStatistics([5,3,100,3,9])
		print(statistics.sum)
		print(statistics.2)
		print(statistics.max)
		print(statistics.min)
	}
	
	func calculateStatistics (scores:[Int]) -> (min: Int, max: Int, sum: Int) {
		// Use a tuple to make a compound value - return multiple values from a function
		// these values can be refered to by either name or number
		
		var min = scores[0]
		var max = scores[0]
		var sum = 0
		
		for score in scores {
			if score > max {
				max = score
			}
			else if score < min {
				min = score
			}
			
			sum += score
		}
		
		return (min, max, sum)
	}
}
