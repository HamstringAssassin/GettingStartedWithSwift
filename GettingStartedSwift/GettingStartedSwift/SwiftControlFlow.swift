//
//  SwiftControlFlow.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 04/01/2016.
//  Copyright © 2016 CodeBiscuits. All rights reserved.
//

import Foundation

class SwiftControlFlow {
	
	func testingSwiftControlFlow(){
		SwiftControlFlow.chutesAndLadders()
		SwiftControlFlow.intervalMatchingWithSwitchStatements()
	}
	
	/**
	A while loop performs a set of statements until a condition becomes false
	*/
	class func chutesAndLadders() {
		let finalSquare = 25
		var board = [Int](repeating: 0, count: finalSquare+1)
		
		board[03] = +08
		board[06] = +11
		board[09] = +09
		board[10] = +02

		board[14] = -10
		board[19] = -11
		board[22] = -02
		board[24] = -08
		
		var square = 0
		var diceRoll = 0
		
		while square < finalSquare {
			// roll the dice
            // TODO: broken in swift 3
//			if ++diceRoll == 7 {
//				diceRoll = 1
//			}
			// move by the rolled amount
			square += diceRoll
			
			if square < board.count {
				// if we are still on the board, move up or down for a snake or ladder
				square += board[square]
			}
		}
		print("Game Over!")
	}
	
	/**
	The repeat while loop performs a single pass thourgh the loop first, before considering the loops condition
	*/
	class func chutesAndLadders2() {
		let finalSquare = 25
		var board = [Int](repeating: 0, count: finalSquare+1)
		
		board[03] = +08
		board[06] = +11
		board[09] = +09
		board[10] = +02
		
		board[14] = -10
		board[19] = -11
		board[22] = -02
		board[24] = -08
		
		var square = 0
		var diceRoll = 0
		
		repeat {
		
			// move up or down fora snake or ladder
			square += board[square]
			
			// roll the dice
//            swift 3
//		if ++diceRoll == 7 {
//			diceRoll = 1
//		}
		
			square += diceRoll
		
		} while square < finalSquare
		print("Game Over!!")
	}
    
    class func intervalMatchingWithSwitchStatements() {
        let approximateCount = 62
        let countedThings = "Moons orbiting saturn"
        var naturalCount: String
        switch approximateCount {
        case 0:
            naturalCount = "NO"
        case 1..<5:
            naturalCount = "a few"
        case 5..<12:
            naturalCount = "several"
        case 12..<100:
            naturalCount = "dozens of"
        case 100..<1000:
            naturalCount = "hundreds of"
        default:
            naturalCount = "many"
        }
        print("there are \(naturalCount) \(countedThings).")
    }
	
}
