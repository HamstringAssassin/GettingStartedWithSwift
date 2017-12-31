//
//  RepeatGeneric.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 30/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class RepeatGeneric {
	
	func repeatItem<Item>(_ item: Item, numberOfTimes:Int) -> [Item] {
		var result = [Item]()
		for _ in 0..<numberOfTimes {
			result.append(item)
		}
		return result
	}
	
	/*
	Use where after the type name to specifcy a list of requirements. ie to require the type to impliment a protocol
	to require twotypes to be the same, or to require a class to have a particular superclass
	*/
	func anyCommonElements <T: Sequence, U: Sequence> (_ lhs: T, _ rhs: U) -> Bool where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
		
		for lhsItem in lhs {
			for rhsItem in rhs {
				if lhsItem == rhsItem {
					return true
				}
			}
		}
		return false
		
	}
}
