//
//  Rank.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 24/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

/*
Use Enum to create an enumeration. Like classes and all other named types, enumerations can
have methods associated with them
*/

enum Rank: Int {
	case Ace = 1
	case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
	case Jack, Queen, King
	
	static let allValues = [Ace, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King]
	
	func simpleDescription() -> String {
		switch self {
		case .Ace:
			return "Ace"
		case .Jack:
			return "Jack"
		case .Queen:
			return "Queen"
		case .King:
			return "King"
		default:
			return String(self.rawValue)
		}
	}
	
	func compareRanks(newRank: Rank) -> Rank {
		let value = max(self.rawValue, newRank.rawValue)
		return Rank(rawValue:(value))!
	}
}