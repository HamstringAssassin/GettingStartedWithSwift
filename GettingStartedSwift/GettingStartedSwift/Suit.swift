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
	
	case Spades, Hearts, Diamonds, Clubs
	
	static let allValues = [Spades, Hearts, Diamonds, Clubs]
	
	func simpleDescription() -> String {
		switch self {
		case .Spades:
			return "Spades"
		case .Hearts:
			return "Hearts"
		case .Diamonds:
			return "Diamonds"
		case .Clubs:
			return "Clubs"
		}
	}
	
	func color() -> String {
		var value = ""
		if self.simpleDescription() == Suit.Spades.simpleDescription() || self.simpleDescription() == Suit.Clubs.simpleDescription() {
			value = "Black"
		} else {
			value = "Red"
		}
		return value
		
	}
}