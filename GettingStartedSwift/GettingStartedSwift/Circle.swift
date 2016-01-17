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
    
    init (radius:Double, name:String) {
        self.radius = radius
        super.init(name: name)
    }
    
    override func simpleDescription() -> String {
        return "A circle of radius \(radius)"
    }
}