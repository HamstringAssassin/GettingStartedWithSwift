//
//  File.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 26/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

enum SimpleEnum : ExampleProtocol {

	case base, adjusted
	
	var simpleDescription : String {
		get {
			return getDescription();
		}
	}
	
	
	func getDescription() -> String {
		switch self {
		case .base:
			return "Simple Description"
		case .adjusted:
			return "Adjusted Description"
		}
		
	}
	
	mutating func adjust() {
		self = SimpleEnum.adjusted
	}
}
