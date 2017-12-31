//
//  SwiftStrings.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 25/12/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class SwiftStrings {
	
	func testingSwiftStrings() {
		SwiftStrings.stringCharacters()
        SwiftStrings.stringCharactersIndices()
        SwiftStrings.checkingStringEquality()
//		SwiftStrings.specialCharatersInStringLiterals()
//		SwiftStrings.specialCharactersCounting()
//		SwiftStrings.stringIndexes()
//		SwiftStrings.insertingAndRemovingWithStrings()
	}
    
    class func checkingStringEquality() {
        let aString = "this is a string"
        let bString = "This is a string"
        
        if aString == bString {
            print("They are the same")
        } else {
            print("They are different")
        }
    }
    
    class func checkingStringContents() {
        let emptyString = ""
        let alternativeEmptyString = String()
        
        if emptyString.isEmpty {
            print("Nothing to see here.")
        }
        
        if alternativeEmptyString.isEmpty {
            print("Nothing to see here either.")
        }
    }
    
    class func stringMutability() {
        var variableString = "Horse"
        variableString += " and carraige"
        print(variableString)
        
        let constantString = "Horse"
//        the following line generates a runtime error as you cannot mutate a constant
//        constantString += " and Buggy"
        print(constantString)
    }
    
    class func stringCharactersIndices() {
        let aString = "this is a string"
        for idx in aString.characters.indices {
            print(idx)
        }
    }
    
    class func stringCharacters() {
        let aString = "this is a string"
        
        for character in aString.characters {
            print(character)
        }
    }
    
    class func specialCharatersInStringLiterals() {
 
        /*
        String Literals can contain the following special characters
        \0 null character
        \\ backslash
        \t horizontal tab
        \n line feed
        \r carriage return
        \" double quote
        \' single quote
        */
        
        let wisewords = "\"Imagination is more important than knowledge\" - Einstein"
        print(wisewords)
        let dollarsign = "\u{24}"
        print(dollarsign)
        let blackheart = "\u{2665}"
        print(blackheart)
        let sparklingHeart = "\u{1F496}"
        print(sparklingHeart)
    }
    
    class func specialCharactersCounting() {
        var word = "cafe"
        print("The number of charcters in \(word) is: \(word.characters.count)")
        
        word += "\u{301}"
        print("The number of charcters in \(word) is: \(word.characters.count)")
    }
    
    class func stringIndexes() {
        let greeting = "Guten Tag!"
        print(greeting.startIndex)
        print(greeting.endIndex)
        print(greeting.characters.index(before: greeting.endIndex))
        print(greeting.characters.index(after: greeting.startIndex))
        let index = greeting.characters.index(greeting.startIndex, offsetBy: 7)
        print(index)
        
        for idx in greeting.characters.indices {
            print("\(greeting[idx])", terminator: "")
        }
    }
    
    class func insertingAndRemovingWithStrings() {
        var welcome = "Hello"
        welcome.insert("!", at: welcome.endIndex)
        print(welcome)
        
        
//        to insert the contents of another string at indexes...
        welcome.insert(contentsOf: " there".characters, at: welcome.characters.index(before: welcome.endIndex))
        print(welcome)
    }
}
