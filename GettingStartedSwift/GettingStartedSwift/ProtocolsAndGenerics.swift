//
//  ProtocolsAndGenerics.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 12/05/2017.
//  Copyright © 2017 CodeBiscuits. All rights reserved.
//

import Foundation

protocol ViewModel {
    
}

@objc protocol ProtocolA {
    var firstVar: String { get }
    optional var secondVar: String { get }
}

class AnyConcreteClass: ProtocolA {
    @objc var firstVar: String
    
    init<Injected: ProtocolA>(_ item: Injected) {
        self.firstVar = item.firstVar
    }
}

extension AnyConcreteClass: Equatable {}
func ==<T:ProtocolA>(lhs: T, rhs: T) -> Bool {
    return false
}

class ConcreteClassOne: ProtocolA {
    @objc var firstVar: String
    init() {
        firstVar = "first Var"
    }
}

class ConcreteClassTwo: ProtocolA {
    @objc var firstVar: String
    init() {
        firstVar = "class 2"
    }
}

class CustomList<T: ViewModel> {
    var list = [T]()
    
    init(list: [T]) {
        self.list = list
    }
}

class testing {
    let customList: CustomList<AnyConcreteClass>
    
    init() {
        let pro1 = AnyConcreteClass(ConcreteClassOne())
        let pro2 = AnyConcreteClass(ConcreteClassTwo())
        self.customList = CustomList(list: [pro1, pro2])
    }
    
    func doSomethingWithList() {
        let object = customList.list[0].firstVar
        if customList.list[0] is ConcreteClassTwo {
            
        }
        print(object)
    }
}
