//
//  Card.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 24/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

/*
Structures support many of the same behaviours as classes, including methods and initializers

Structs are always copied when they are passed around in your code. But classes are passed by reference.
*/

struct Card {
	var rank: Rank
	var suit: Suit
	
	func simpleDescription() -> String {
		return "The rank is \(rank.simpleDescription()) of \(suit.simpleDescription())"
	}
}