//
//  Suit.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 24/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

/*
the case values of an enumberation are actual values, not just another way of writing their raw values. 

In fact, cases where there isnt a meaningful raw value, you dont have to provide one.
*/

enum Suit {
	
	case spades, hearts, diamonds, clubs
	
	static let allValues = [spades, hearts, diamonds, clubs]
	
	func simpleDescription() -> String {
		switch self {
		case .spades:
			return "Spades"
		case .hearts:
			return "Hearts"
		case .diamonds:
			return "Diamonds"
		case .clubs:
			return "Clubs"
		}
	}
	
	func color() -> String {
		var value = ""
		if self.simpleDescription() == Suit.spades.simpleDescription() || self.simpleDescription() == Suit.clubs.simpleDescription() {
			value = "Black"
		} else {
			value = "Red"
		}
		return value
		
	}
}
