//
//  TestEnumsAndStructs.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 11/03/2016.
//  Copyright © 2016 CodeBiscuits. All rights reserved.
//

import Foundation

class TestEnumsAndStructs {
	
	func fullDeck() -> [Card] {
		var value = [Card]()
		
		for suit in Suit.allValues {
			for rank in Rank.allValues {
				let card = Card(rank: rank, suit: suit)
				value.append(card)
			}
		}
		return value
	}
	
	func fullCard() {
		let card = Card(rank:Rank.three, suit: Suit.spades)
		print(card.simpleDescription())
	}
	
	func cardSuits() {
		let suit = Suit.clubs
		print(suit.simpleDescription())
		print(suit.color())
	}
	
	func cardRanks() {
		let ace = Rank.ace
		print(ace)
		let three = Rank.three
		print(ace.compareRanks(Rank.king))
		print(three.compareRanks(Rank.king))
		print(three.compareRanks(Rank.two))
	}

}
