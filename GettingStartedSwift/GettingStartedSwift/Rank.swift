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
	case ace = 1
	case two, three, four, five, six, seven, eight, nine, ten
	case jack, queen, king
	
	static let allValues = [ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king]
	
	func simpleDescription() -> String {
		switch self {
		case .ace:
			return "Ace"
		case .jack:
			return "Jack"
		case .queen:
			return "Queen"
		case .king:
			return "King"
		default:
			return String(self.rawValue)
		}
	}
	
	func compareRanks(_ newRank: Rank) -> Rank {
		let value = max(self.rawValue, newRank.rawValue)
		return Rank(rawValue:(value))!
	}
}
