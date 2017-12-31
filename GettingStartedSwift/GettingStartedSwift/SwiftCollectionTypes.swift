//
//  SwiftCollectionTypes.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 29/12/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

 /**
 Swift provides 3 different collection types. Arrays, Sets and Dictionaries.
 Arrays are ordered, Sets are unordered collections of UNIQUE values, and Dictionaries are 
 unordered collections of key-value associations. 
 
 assigning a collection to a var means its mutable, assigning to a constant meants its immutable.
*/

class SwiftCollectionTypes {
	
	func testingSwiftCollectionTypes() {
		SwiftCollectionTypes.arrayWithRepeatableVlaue()
		SwiftCollectionTypes.setOperations()
		SwiftCollectionTypes.setMembershipAndEquality()
		SwiftCollectionTypes.creatingDictionaries()
	}
	
    class func createEmptyArray() {
        let someInts = [Int]()
        let someIntsFull = Array<Int>()
        print("SomeIntsFull is of type int and has \(someIntsFull.count) values")
        print("SomeInts is of type int and has \(someInts.count) values")
    }
    
    class func arrayWithRepeatableVlaue() {
        let threeDouble = [Double](repeating: 0.0, count: 3)
        print(threeDouble)
        let anotherThreeDoubles = [Double](repeating: 0.0, count: 3)
        let sixDoubles = threeDouble + anotherThreeDoubles
        print(sixDoubles)
        
        //You can create arrays with literals
        var shoppingList: [String] = ["Eggs", "Milk"]
        
        var inferredShoppingList = ["Carrots", "Leeks"]
        // Because of type inference, and inferredShoppingList was created with only strings
        // the value types need to be strings. the below code will generate an error
//        inferredShoppingList.append(12)
        
        // checking if an array is empty
        if shoppingList.isEmpty {
            print("The Shopping List is empty")
        } else {
            print("The shopping List is not empty")
        }
        
        //Inserting an item into an array at a specific index
        shoppingList.insert("Flour", at: 0)
        print(shoppingList)
        //Removing an item. The following can generate a runtime error if the index is out of bounds
        shoppingList.remove(at: 0)
        
        for item in shoppingList {
            print(item)
        }
        // If you want the index of each item as well as its value, use emumerate()
        // this returns a tuple with the index and the value
        for (index, value) in shoppingList.enumerated() {
            print("Item at index \(index) is \(value).")
        }
    }
    
    class func creatingSets() {
        var letters = Set<Character>()
        print("Letters is of type set<Character> with \(letters.count) items.")
        letters.insert("a")
        //letters now contains one value of type charchater
        letters = []
        //letters is now empty, but the type is still infered to be characters
        //You can create a set with an array literal
        var favouriteGenres: Set<String> = ["Rock","Classical","Hip-Hop"]
        print("I have \(favouriteGenres.count) favourite Genres")
        if favouriteGenres.isEmpty {
            print("I dont have any favourite genres")
        } else {
            print("My favouite gneres are \(favouriteGenres)")
        }
        
        favouriteGenres.insert("Jazz")
        for genre in favouriteGenres.sorted() {
            print(genre)
        }
    }
    
    class func setOperations() {
        let oddDigits: Set = [1,3,5,7,9]
        let evenDigits: Set = [0,2,4,6,8]
        let singleDigitPrimeNumbers: Set = [2,3,5,7]
        
        print(oddDigits.union(evenDigits).sorted())
        
        print(oddDigits.intersection(evenDigits).sorted())
        
        print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
        
        print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())
    }
    
    class func setMembershipAndEquality() {
        let houseAnimals: Set = ["Cat", "Dog"]
        let farmAnimals: Set = ["Cow","Chicken","Sheep","Cat","Dog"]
        let cityAnimals: Set = ["Pigeon", "Rat"]
        
        print(houseAnimals.isSubset(of: farmAnimals))
        print(farmAnimals.isSuperset(of: houseAnimals))
        print(farmAnimals.isDisjoint(with: cityAnimals))
    }
    
    class func creatingDictionaries() {
        var namesOfIntegers = [Int: String]()
        namesOfIntegers[16] = "Sixteen"
        //and with literals...
        var airports: [String : String] = ["YYZ":"Toronto Pearson","DUB":"Dublin"]
        print("The airports dictionary contains \(airports.count) airports")
        //adding a value using subscript method. Note there is no return value
        airports["LHR"] = "London"
        print("The airports dictionary contains \(airports.count) airports")
        //changing a value with the subscript value
        airports["LHR"] = "London Heathrow"
        
        //can also use updateValue which returns the old value
        print(airports.updateValue("London", forKey: "LHR"))
        
    }
    
}
