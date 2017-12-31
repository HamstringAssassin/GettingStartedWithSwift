//
//  SwiftClosures.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 17/01/2016.
//  Copyright © 2016 CodeBiscuits. All rights reserved.
//

import Foundation

class SwiftClosures {
	
	var x = 10
	
	/**
     * Closures are self contained blocks of functionality that can be passed around and used in your code.
     Closures in swift are similar to blocks in C and objective-C
     
     Global and nested functions are special types of closures
     
     Global functions are closures that have a name and do not capture any values
     
     Nested Functions are closures that have a name and can capture values from their enclosing function
     
     Closure Expressions are unnamed closures written in a lightweight syntax that can capture
     values from their surrounding context
     
     */
	func testingSwiftClosures() {
		
		let closureExample = SwiftClosures()
//		closureExample.closureExample()
//		closureExample.closureExample2()
//		closureExample.closureExample3()
//		closureExample.closureExample4()
//		
//		closureExample.someFunctionThatTakesAClosure { () -> Void in
//			//closure body goes here.
//		}
//		
//		closureExample.someFunctionThatTakesAClosure() {
//			//trailing closure's body goes here.
//		}
//		closureExample.closureExample6()
//		
//		let incrementByTen = makeIncrimenter(forIncriment: 10)
//		print(incrementByTen()) // returns 10
//		print(incrementByTen()) // returns 20
//		print(incrementByTen()) // returns 30
//		
//		let alsoIncrementByTen = incrementByTen
//		
//		print(alsoIncrementByTen())
		
		closureExample.testingFunctionsWithClosures()
		print(closureExample.x) // should print 200
		
		completionHandlers.first?()
		print(closureExample.x)
	}
	
    func closureExample() {
        let names = ["Alan","Claire","Lola","Teddy"]
        
        func backwards(_ s1:String, _ s2:String) -> Bool {
            return s1 > s2
        }
		print(names.sorted(by: backwards))
    }
    
    /**
     The below method uses a closure instead of creating a nested method
     */
    func closureExample2() {
        let names = ["Alan","Claire","Lola","Teddy", "martha"]
		
		let forwardClosure = {(s1:String, s2:String)->Bool in
			return s1 < s2
		}
        let reversed = names.sorted(by: {(s1:String, s2:String) -> Bool in
            return s1 > s2
        })
		
		print(names.sorted(by: forwardClosure))
        print(reversed)
    }
	
    /**
     Because the sprting closure is passed as an arguement to a method, swift
     can infer the types of its paramters and the type of the value it returns
     
     the sort method is being called on an array of strings, so its arguement type must be
     (String, String) -> Bool. this means that the types can be omitted from the closures declaration
     
     As the closure has a single return value, the return keyword can also be omitted.
     */
    
    func closureExample3(){
        let names = ["Alan","Claire","Lola","Teddy"]
        let reversed = names.sorted( by: { s1, s2 in return s1 > s2 } )
        print(reversed)
    }
    
    /**
     Swift automatically privides a shorthand argument names to inline closures,
     Which can be used to refer to the values of the closures arguements by the names $0, $1, $2 etc
     */
    func closureExample4() {
        let names = ["Alan","Claire","Lola","Teddy"]
        let reversed = names.sorted( by: { $0 > $1 } )
        print(reversed)
    }
    
    /**
    Trailing closures. If you need to pass a closure expression to a function as the functions final arguement 
    and the closure expression is long it can be useful to write it as a trailing closure instead.
    */
    
    func someFunctionThatTakesAClosure(_ closure: () -> Void) {
        // function body goes here.
    }
    //Using the method above for trailing closures...
    func closureExample5() {
        let names = ["Alan","Claire","Lola","Teddy"]
        let reversed = names.sorted() {$0 > $1}
        
        let reversed2 = names.sorted {$0 > $1}
        print(reversed)
        print(reversed2)
    }
    
    /**
     Here you can use the map(_:) method with a trailing closure to convert an array 
     of Int Values into an array of String Values. the array [16, 58, 510] is used to create the new array 
     ["OneSix", "FiveEight", "FiveOneZero"]
     */
    func closureExample6() {
        let digitNames = [0:"Zero",1:"One",2:"Two",3:"Three",4:"Four",5:"Five",6:"Six",7:"Seven",8:"Eight",9:"Nine"]
        let numbers = [16, 58, 510]
        
        let strings = numbers.map {
            (number) -> String in
            var output = ""
            var number = number
            while number > 0 {
                output = digitNames[number % 10]! + output
                number /= 10
            }
            return output
        }
        print(strings)

    }
	
	func makeIncrimenter(forIncriment amount: Int) -> () -> Int {
		var runningTotal = 0
		func incrimenter() -> Int {
			runningTotal += amount
			return runningTotal
		}
		return incrimenter
	}
	
	//Non escaping closures
	
	// marking a closure with @noescape allows you to use self implicitly within the closure
	func someFunctionWithNoescapeClosure(_ closure: () -> Void) {
		closure()
	}
	
	/*
	One way that a closure can escape is by being stored ina variable that is defined outside the function.
	As an example, many functions that start an asyncronous operation take a closure arguement as a  completion handler.
	The function returns after it starts the operation, but the closure isnt called until the operation is completed. 
	The closure needs to escape, to be called later. ie...
	*/
	var completionHandlers: [() -> Void] = []
	
	func someFunctionWithEscapingClosure(_ completionHandler: @escaping () -> Void) {
		completionHandlers.append(completionHandler)
	}
	
	func testingFunctionsWithClosures () {

		someFunctionWithEscapingClosure { () -> Void in
			self.x = 100
		}
		someFunctionWithNoescapeClosure { () -> Void in
			x = 200
		}
	}
}
