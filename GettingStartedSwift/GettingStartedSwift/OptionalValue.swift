//
//  OptionalValue.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 30/11/2015.
//  Copyright © 2015 CodeBiscuits. All rights reserved.
//

import Foundation

enum OptionalValue<Wrapped> {
	case None
	case Some(Wrapped)
}