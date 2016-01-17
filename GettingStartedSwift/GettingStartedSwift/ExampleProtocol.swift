//
//  ExampleProtocol.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 26/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

/*
Classes, Enums, and Structs can all adopt Protocols
*/

protocol ExampleProtocol {
	var simpleDescription: String { get }
	
	mutating func adjust()
}

extension Int : ExampleProtocol {
	var simpleDescription: String {
		return "the number \(self)"
	}
	
	mutating func adjust() {
		self += 42
	}
}

extension Double {
	func absoluteValue() -> String {
		return "\(fabs(self))"
	}
}