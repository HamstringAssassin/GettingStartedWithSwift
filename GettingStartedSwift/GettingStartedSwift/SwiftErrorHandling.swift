//
//  SwiftErrorHandling.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 24/12/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

enum FoodError : ErrorType {
    case outOfCleanDishes
    case missingIngredients
    
}

class SwiftErrorHandling {
    /**
    *  In constrast to optionals which can use the presence of absence of a value to communicate success
    or failure of a function, error handling allows you to determine the underlying cause of the failure
    and if necessary propage it to another part of the program
    */

	func testingSwiftErrorHandling() {
		
	}
    
    class func canThrowError() throws {

    }
    
    class func example() {
//        swift automatically propagates an error out of their current scope until they are caught with a catch clause.
        do {
            try canThrowError()
                // no error was throw
        } catch {
            // an error was thrown
        }
    }
    
    class func makeASandwich() throws {
        let test = 1
        if test == 1 {
            throw FoodError.outOfCleanDishes
        } else if test == 2 {
            throw FoodError.missingIngredients
        }
    }
    
    class func eatASandwich() {
        print("Eating a sandwich")
    }
    
    class func washDishes() {
        print("wash dishes")
    }
    
    class func missingIngredients(ingredients: [String]) {
        print("buy groceries")
    }
    
    class func example2() {
        do {
            try makeASandwich()
            eatASandwich()
        } catch FoodError.outOfCleanDishes {
            washDishes()
        } catch FoodError.missingIngredients() {
            missingIngredients([""])
        } catch {
            print("i dunno")
        }
    }
}