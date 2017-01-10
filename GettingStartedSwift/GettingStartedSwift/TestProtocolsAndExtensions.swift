//
//  TestProtocolsAndExtensions.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 11/03/2016.
//  Copyright © 2016 CodeBiscuits. All rights reserved.
//

import Foundation

class TestProtocolsAndExtensions {
	
	func usingProtocols() {
		/*
		You can use a protocol name just like any other named type. ie create a collection of objects that have
		different types, but that all conform to a single protocol.
		*/
		let a = SimpleClass()
		let protocolValue:ExampleProtocol = a
		print(protocolValue.simpleDescription)
		//		print(protocolValue.anotherProperty)
	}
	
	func extensionDouble() {
		let value = -3.212
		let d = value.absoluteValue()
		print(d)
	}
	
	func extensionInt() {
		let i = 7.simpleDescription
		print(i)
	}

	func simpleEnumExample() {
		var c = SimpleEnum.base
		c.adjust()
		print(c.simpleDescription)
	}
	
	func serverResponses() {
		/*
		An instance of an enum can have values associated with it. Instances of the same enum
		can have different values associated with them. You provide the asociated values when you create
		the instance. Associated Values and raw values are differnet. The Raw Value of an enum is the same for all its instances
		and you provide the raw value when you define the enum.
		*/
		
		let success = ServerResponse.result("6:00 am", "8:01 pm")
		let failure = ServerResponse.error("Out of Cheese")
		
		switch success {
		case let .result(sunrise, sunset):
			print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
		case let .error(error):
			print("Failure: \(error)")
		}
	}

	
}
