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
