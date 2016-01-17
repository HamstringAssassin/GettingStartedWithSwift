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
    
    func someFunction(firstParameterName: Int, secondParameterName: Int) {
        // function body goes here
        // firstParameterName and secondParamterName refer to the arguements
        // values for the first and second paramter
    }
    
    func defaultParameterFunction(parameterWithDefaultValue:Int = 12) {
        // Function body goes here.
        print(parameterWithDefaultValue)
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