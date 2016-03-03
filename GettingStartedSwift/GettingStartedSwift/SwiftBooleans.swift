//
//  SwiftBooleans.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 16/12/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class SwiftBooleans {

    static var turnipsAreDelicious:Bool = true
	
	func testingSwiftBooleans(){
		SwiftBooleans.boolsAndTypeInference()
		SwiftBooleans.niceFoods()
	}
	
    class func niceFoods() {
        if turnipsAreDelicious {
            print("mmm, tasty")
        } else {
            print("gross")
        }
    }
    
    class func boolsAndTypeInference() {
        let i = 1
//        if i = 1 {
//            print("something")
//        }
        
//        the above generates a compile error. However, the following is acceptable...
        
        if i == 1 {
            print("Something good")
        }
        
    }
    
}