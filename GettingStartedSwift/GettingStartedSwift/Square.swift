//
//  Square.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 21/10/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import UIKit

class Square: NamedShape {
	var sideLength: Double
	
	func testSquare() {
		let square = Square(sideLength: 5.2, name: "Test square")
		print(square.area())
		print(square.simpleDescription())
	}
	
	init (sideLength: Double, name: String) {
		self.sideLength = sideLength
		super.init(name: name)
		numSides = 4
	}
	
	func area() -> Double {
		return sideLength * sideLength
	}
	
	override func simpleDescription() -> String {
		return "A square with sides of length \(sideLength)"
	}
}
