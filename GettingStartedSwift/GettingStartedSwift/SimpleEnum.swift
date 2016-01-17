//
//  File.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 26/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

enum SimpleEnum : ExampleProtocol {

	case Base, Adjusted
	
	var simpleDescription : String {
		get {
			return getDescription();
		}
	}
	
	
	func getDescription() -> String {
		switch self {
		case .Base:
			return "Simple Description"
		case .Adjusted:
			return "Adjusted Description"
		}
		
	}
	
	mutating func adjust() {
		self = SimpleEnum.Adjusted
	}
}