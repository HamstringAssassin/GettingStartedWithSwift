//
//  TestGenerics.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 11/03/2016.
//  Copyright © 2016 CodeBiscuits. All rights reserved.
//

import Foundation

class TestGenerics {
	
	
	func optionalType() {
		var possibleIntegers:OptionalValue<Int> = OptionalValue.none
		possibleIntegers = OptionalValue.some(1000)
		print(possibleIntegers)
	}
	
	func startingGenerics() {
		let g = RepeatGeneric()
		let array = g.repeatItem("knock", numberOfTimes: 4)
		print(array)
		
		let t = RepeatGeneric()
		print(t.anyCommonElements([1,2,3,4,54], [4]))

	}
	
	func simpleProtocolsExample() {
		let a = SimpleClass()
		a.adjust()
		print(a.simpleDescription)
	}
	
	func simpleStructureExample() {
		var b = SimpleStructure()
		b.adjust()
		print(b.simpleDescription)
	}

}
