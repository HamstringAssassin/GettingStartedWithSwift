//
//  ModelWithCallback.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 06/05/2016.
//  Copyright © 2016 CodeBiscuits. All rights reserved.
//

import Foundation

typealias completionHandlerType = (result:[String]) -> Void

class ModelWithCallback {
	
	var handler:completionHandlerType!
	
	init(completionHandler: completionHandlerType) {
		
		self.handler = completionHandler
		
		let test:String = "test"
		
		self.handler(result: [test])
	}
}