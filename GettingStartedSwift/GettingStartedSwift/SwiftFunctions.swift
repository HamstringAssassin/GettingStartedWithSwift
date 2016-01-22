//
//  SwiftFunctions.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 17/01/2016.
//  Copyright © 2016 CodeBiscuits. All rights reserved.
//

import Foundation

class SwiftFunctions {
    
    func sayHello(personName:String) -> String {
        let greeting = "hello, \(personName)"
        return greeting
    }
    
    func sayHelloAgain(personName: String) -> String {
        return "Hello again, \(personName)"
    }
    
    func sayHello(personName: String, alreadyGreeted:Bool) -> String {
        if alreadyGreeted {
            return sayHelloAgain(personName)
        } else {
            return sayHello(personName)
        }
    }
    
    func printAndCount(stringToPrint: String) -> Int {
        print(stringToPrint)
        return stringToPrint.characters.count
    }
    
    func printWithoutCounting(stringToPrint: String) {
        printAndCount(stringToPrint)
    }
    
    func minMax(array: [Int]) -> (min: Int, max:Int) {
        /**
        *  You can use a tuple type to return multiple values as a single return value
        */
        var currentMin = array[0]
        var currentMax = array[0]
        
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
	
	/***
	*	function Paramter Names - important for understanding the "_" in the parameters of a function
	*/
	
    func someFunction(firstParameterName: Int, secondParameterName: Int) {
        // function body goes here
        // firstParameterName and secondParamterName refer to the arguements
        // values for the first and second paramter
    }
	
	func someFunctionTwo(firstParameterName: Int,_ secondParameterName: Int) {
		// function body goes here
		// firstParameterName and secondParamterName refer to the arguements
		// values for the first and second paramter
		// note the _ before secondParamterName and refer to the test method
		// the underscore allows you to omit it from the
	}
	
	func someFunctionThree(externalParamterName internalParameterName: Int) {
		print(internalParameterName);
//		print(externalParameterName); - Doesnt work as external paramter name is what is specified externally
	}
	
	func testSomeFunction() {
		self.someFunction(1, secondParameterName: 2)
	}
	
	func testSomeFunctionTwo() {
		self.someFunctionTwo(1, 2);
	}
	
	func testSomeFunctionThree() {
		self.someFunctionThree(externalParamterName: 10);
	}
	
    func defaultParameterFunction(parameterWithDefaultValue:Int = 12) {
        // Function body goes here.
        print(parameterWithDefaultValue)
    }
	
	/**
	*	Variable Paramters
	*/
	func variableParameterFunction(var string:String, totalLength: Int, pad:Character) -> String {
		let amountToPad = totalLength - string.characters.count
		if amountToPad < 1 {
			return string
		}
		let padString = String(pad)
		for _ in 1...amountToPad {
			string = padString + string
		}
		return string
	}

	/**
	*	functions with inOut parameters
	*/
	func swapTwoInts(inout a: Int, inout _ b: Int) {
		let temporaryA = a
		a = b
		b = temporaryA
	}
	
    /**
    *   using function types
    */
    func addTwoInts(a: Int, b:Int) -> Int {
        return a + b
    }
    
    func multiplyTwoNumbers(a:Int, b:Int) -> Int {
        return a * b
    }
    
    func chooseStepFunction(backwards:Bool) -> (Int) -> Int {
        func stepForward(input:Int) -> Int {
            return input + 1
        }
        func stepBackward(input:Int) -> Int {
            return input - 1
        }
        return backwards ? stepBackward : stepForward
    }
}