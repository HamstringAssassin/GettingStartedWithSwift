//
//  EqilateralTriangle.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 02/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class EquilateralTriangle: NamedShape {

	/*
	Remember, NamedShape has properties...
	var numSides: Int = 0
	var name: String
	*/
	
    var sideLength: Double = 0.0
	
	/**
	The initializer for EquilateralTriange has 3 different steps.
	1. setting the value of the properties of the subclass
	2. calling the superclasses initializer
	3. Changing the value of properties definted by the superclass.
	*/
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength // calls the setter
        super.init(name: name)
        numSides = 3
    }
	
	func testEquilateralTriangle() {
		let triangle = EquilateralTriangle(sideLength: 3.1, name: "A triangle")
		print(triangle.perimeter)
		triangle.perimeter = 9.9
		print(triangle.sideLength)
	}
	
	/*
	In the setter for perimeter, the new value has the implicit name newValue
	*/
    var perimeter:Double {
        get {
            return 3.0 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0;
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}
