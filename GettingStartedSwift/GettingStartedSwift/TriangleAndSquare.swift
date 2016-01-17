//
//  TriangleAndSquare.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 23/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class TriangleAndSquare: Shape {
	
	/*
	If you dont need to compute the property, but still need to provide code that is run
	before and after setting a new Value, use willSet and didSet
	
	The Code you provide, is run any time the value changes outside of an initializer
	*/
	
	var triangle: EquilateralTriangle {
		willSet {
			square.sideLength = newValue.sideLength
		}
	}
	
	var square : Square {
		willSet {
			triangle.sideLength = newValue.sideLength
		}
	}
	
	init(size: Double, name: String) {
		square = Square(sideLength: size, name: name)
		triangle = EquilateralTriangle(sideLength: size, name: name)
	}
}