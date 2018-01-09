//
//  ClassProtocol.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 09/01/2018.
//  Copyright © 2018 CodeBiscuits. All rights reserved.
//

import Foundation

class AnyBird: BirdProtocol {
    var canFly: Bool
    var name: String
    
    init<injected: BirdProtocol>(injectedObject: injected) {
        self.name = injectedObject.name
        self.canFly = injectedObject.canFly
    }
}
