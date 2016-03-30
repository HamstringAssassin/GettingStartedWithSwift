//
//  NamedShape.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 21/10/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import UIKit

class NamedShape {

	var numSides: Int = 0
	var name: String
	
	func testNamedShape(){
		let namedShape = NamedShape(name: "triange")
		namedShape.numSides = 3
		print(namedShape.simpleDescription())
	}
	
	init(name: String) {
		self.name = name
	}
	
	func simpleDescription() -> String {
		return "A shape with \(numSides) sides."
	}
	
}
