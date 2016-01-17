//
//  SimpleStructure.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 26/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

struct SimpleStructure : ExampleProtocol {
	var simpleDescription : String = "A simple structure"
	
	/*
	The use of the mutating keyword in the declaration of SimpleStructure here is to make a method that
	Modifies the structure
	
	SimpleClass doesnt need this becasue methods on a class always mutate the structure. 
	*/
	mutating func adjust() {
		simpleDescription += " (adjusted)"
	}
}