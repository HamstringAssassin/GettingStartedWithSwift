//
//  ArraysAndDictionaries.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 21/10/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class ArraysAndDictionaries {
	
	
	func testArraysAndDictionaries() {
		let arraysAndDic = ArraysAndDictionaries()
		arraysAndDic.basicDictionariesAndArrays()
	}
	
	
	func basicDictionariesAndArrays(){
		// Creating a dictionary
		var occupations = [
			"malcolm" : "captain",
			"Kaylee" : "Mechanic",
		]
		
		occupations["Jane"] = "Public Relations"
		
		//Creating empty arrays or dictionaries
		
		let emptyArray = [String]()
		let emptyDictionary = [String:Float]()
		
		// this information can also be infered. eg
		let optionalEmptyArray = []
		let optionalEmptyDictionary = [:]
		
	}	
}