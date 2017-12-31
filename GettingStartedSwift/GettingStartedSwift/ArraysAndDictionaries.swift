//
//  ArraysAndDictionaries.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 21/10/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class ArraysAndDictionaries {
    
    
    func testArraysAndDictionaries() {
        let arraysAndDic = ArraysAndDictionaries()
        arraysAndDic.basicDictionariesAndArrays()
        arraysAndDic.testMappingArray()
        arraysAndDic.testFilterArray()
    }
    
    
    func basicDictionariesAndArrays(){
        // Creating a dictionary
        var occupations = [
            "malcolm" : "captain",
            "Kaylee" : "Mechanic",
            ]
        
        occupations["Jane"] = "Public Relations"
        
        //Creating empty arrays or dictionaries
        
        let emptyArray = [String]()
        let emptyDictionary = [String:Float]()
        
    }
    
    func testMappingArray() {
        let testArray = [1,2,3,4,5,6,7,8,9]
        let newArray = testArray
            .map {
                return $0*2
            }
        print(newArray)
    }
    
    func testFilterArray() {
        let testArray = [1,2,3,4,5,6,7,8,9]
        let result = testArray
        .filter { (value) in
            return value % 2 == 0
        }
        print(result)
        
        //alternative form 
        let result2 = testArray
            .filter {
                return $0 % 2 == 0
        }
        print(result2)
    }
    
    
}
