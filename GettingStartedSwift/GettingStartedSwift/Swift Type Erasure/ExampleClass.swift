//
//  ExampleClass.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 09/01/2018.
//  Copyright © 2018 CodeBiscuits. All rights reserved.
//

import Foundation

class ExampleClass {
    var listOfBirds: [BirdProtocol] = []
    
    init() {
        let anyBirdCrow = AnyBird(injectedObject: Crow())
        let anyBirdPenguin = AnyBird(injectedObject: Penguin())
        
        self.listOfBirds.append(anyBirdCrow)
        self.listOfBirds.append(anyBirdPenguin)
    }
    
    func canAllBirdsFly() -> Bool {
        var allBirdsCanFly: Bool = true
        allBirdsCanFly = listOfBirds.contains { (bird) -> Bool in
            print("bird: \(bird.name) can fly: \(bird.canFly)")
            return bird.canFly
        }
//        allBirdsCanFly = listOfBirds.map{ (bird) in
//            bird.canFly
//            }.contains(where: { (canFly) -> Bool in
//                !canFly
//            })
     
        return allBirdsCanFly
    }
}
