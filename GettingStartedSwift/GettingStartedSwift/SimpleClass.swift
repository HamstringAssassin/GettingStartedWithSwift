//
//  SimpleClass.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 26/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class SimpleClass: ExampleProtocol {
	
	var simpleDescription: String = "A very simple Class"
	var anotherProperty: Int = 69105
	
	func adjust() {
		simpleDescription += " Now 100% adjusted"
	}
}