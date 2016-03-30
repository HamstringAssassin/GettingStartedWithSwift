//
//  Circle.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 02/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

class Circle: NamedShape {
    
    var radius: Double
	
	func testCircle() {
		let circle = Circle(radius: 7, name: "test Circle")
		print(circle.simpleDescription())
	}
	
	
    init (radius:Double, name:String) {
        self.radius = radius
        super.init(name: name)
    }
    
    override func simpleDescription() -> String {
        return "A circle of radius \(radius)"
    }
}