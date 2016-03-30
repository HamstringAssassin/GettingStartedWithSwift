//
//  Shape.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 21/10/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class Shape {
	var numOfSides = 0
	
	func testShape(){
		let shape = Shape()
		shape.numOfSides = 7
		print(shape.simpleDescription())
	}
	
	func simpleDescription() -> String {
		return "A shape with \(numOfSides) sides."
	}
}