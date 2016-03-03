//
//  ViewController.swift
//  GettingStartedSwift
//
//  Created by O'Connor, Alan on 20/10/2015.
//  Copyright (c) 2015 CodeBiscuits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
//		print(greet("Alan", day: "Today"))
//        
//        let circle = Circle(radius: 7, name: "test Circle")
//        print(circle.simpleDescription())
		
//		shapesEquilateralTriange()
//		TriangleAndSquareTesting()
//		cardRanks()
//		cardSuits()
//		fullCard()
//		print(fullDeck())
//		serverResponses()
//		simpleProtocolsExample()
//		simpleStructureExample()
//		simpleEnumExample()
//		extensionInt()
//		extensionDouble()
//		usingProtocols()
//		startingGenerics()
//		let t = RepeatGeneric()
//		print(t.anyCommonElements([1,2,3,4,54], [4]))
		
		
//		ConstantsAndVariables().testingConstantsAndVariables()
//		SwiftBooleans().testingSwiftBooleans()
//		SwiftTuples().testingSwiftTuples()
//		SwiftOptionals().testingSwiftOptions()
//		SwiftErrorHandling().testingSwiftErrorHandling()
//		SwiftStrings().testingSwiftStrings()
//		SwiftCollectionTypes().testingSwiftCollectionTypes()
//		SwiftControlFlow().testingSwiftControlFlow()
//		SwiftControlTransferStatements().testingSwiftcontrolTransferStatements()
//		SwiftFunctions().testingSwiftFunctions()

		SwiftClosures().testingSwiftClosures()
		
	}
	
	func optionalType() {
		var possibleIntegers:OptionalValue<Int> = OptionalValue.None
		possibleIntegers = OptionalValue.Some(1000)
		print(possibleIntegers)
	}
	
	func startingGenerics() {
		let g = RepeatGeneric()
		let array = g.repeatItem("knock", numberOfTimes: 4)
		print(array)
	}
	
	func usingProtocols() {
		/*
		You can use a protocol name just like any other named type. ie create a collection of objects that have
		different types, but that all conform to a single protocol.
		*/
		let a = SimpleClass()
		let protocolValue:ExampleProtocol = a
		print(protocolValue.simpleDescription)
//		print(protocolValue.anotherProperty)
	}
	
	func extensionDouble() {
		let value = -3.212
		let d = value.absoluteValue()
		print(d)
	}
	
	func extensionInt() {
		let i = 7.simpleDescription
		print(i)
	}
	
	func simpleEnumExample() {
		var c = SimpleEnum.Base
		c.adjust()
		print(c.simpleDescription)
	}
	
	func simpleProtocolsExample() {
		let a = SimpleClass()
		a.adjust()
		print(a.simpleDescription)
	}
	
	func simpleStructureExample() {
		var b = SimpleStructure()
		b.adjust()
		print(b.simpleDescription)
	}
	
	
	func serverResponses() {
		/*
		An instance of an enum can have values associated with it. Instances of the same enum 
		can have different values associated with them. You provide the asociated values when you create 
		the instance. Associated Values and raw values are differnet. The Raw Value of an enum is the same for all its instances
		and you provide the raw value when you define the enum.
		*/
		
		let success = ServerResponse.Result("6:00 am", "8:01 pm")
		let failure = ServerResponse.Error("Out of Cheese")
		
		switch success {
		case let .Result(sunrise, sunset):
			print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
		case let .Error(error):
			print("Failure: \(error)")
		}
	}
	
	func fullDeck() -> [Card] {
		var value = [Card]()
		
		for suit in Suit.allValues {
			for rank in Rank.allValues {
				let card = Card(rank: rank, suit: suit)
				value.append(card)
			}
		}
		
		return value
	}
	
	func fullCard() {
		let card = Card(rank:Rank.Three, suit: Suit.Spades)
		print(card.simpleDescription())
	}
	
	func cardSuits() {
		let suit = Suit.Clubs
		print(suit.simpleDescription())
		print(suit.color())
	}
	
	func cardRanks() {
		let ace = Rank.Ace
		print(ace)
		let three = Rank.Three
		print(ace.compareRanks(Rank.King))
		print(three.compareRanks(Rank.King))
		print(three.compareRanks(Rank.Two))
	}
	
	func TriangleAndSquareTesting() {
		let triangleAndSquare = TriangleAndSquare(size: 10, name: "Another Test Shape")
		print("Square Side Length: \(triangleAndSquare.square.sideLength)")
		print("Triangle Side Length: \(triangleAndSquare.triangle.sideLength)")
		
		triangleAndSquare.square = Square(sideLength: 50, name: "Larger Square")
		print("Triangle Side Length: \(triangleAndSquare.triangle.sideLength)")
		print("Square Side Length: \(triangleAndSquare.square.sideLength)")
	}
	
	
	func shapesEquilateralTriange() {
		let triangle = EquilateralTriangle(sideLength: 3.1, name: "A triangle")
		print(triangle.perimeter)
		triangle.perimeter = 9.9
		print(triangle.sideLength)
	}
    
    func functionsAndIncriments() {
        let functions = Functions()
        print(functions.returnFifteen())
        
        let incriment = functions.makeIncriment()
        print (incriment(7))
        
        let numbers = [20,19,7,12]
        functions.hasAnyMatches(numbers, condition: functions.lessThanTen)
        
        // Functions are a special case of closures. blocks of code that can be called later.
        //You can write a closure without a name by surrounding code with braces ({})
        let mappedNumbers = numbers.map({
            (number:Int) -> Int in
            let result = 3 * number
            return result
        })
        
        print(mappedNumbers)
        
        //You have several Options for writing closures more concisely. When a closures type, is known, ie for a callback for a delegate,
        // you can omit the type of its paramters, its return type, or both.
        
        let mappedNumbers2 = numbers.map({ number in 3 * number })
        print(mappedNumbers2)
        
        let sortednumbers = numbers.sort{ $0 > $1 }
        print(sortednumbers)
    }
    
    func maths(){
        let maths = Maths()
        maths.printStatistics()
        print(maths.sumOf())
        print(maths.sumOf(42, 35, 77))
        print("Median is : \(maths.calculateMedian(12,34,23,34,56,34)) ")
    }
    
    func conditionals() {
        let conditionals = ConditionalsAndLoops()
        conditionals.forloops()
        conditionals.ifLoops()
        conditionals.switches()
        conditionals.controlFlow()
        conditionals.whileAndRepeat()
        conditionals.ranges()
    }
    
    func arraysAndDicts() {
        let arraysAndDic = ArraysAndDictionaries()
        arraysAndDic.basicDictionariesAndArrays()
    }
    
    func shapes(){
        let shape = Shape()
        shape.numOfSides = 7
        print(shape.simpleDescription())
    }
    
    func namedShapes(){
        let namedShape = NamedShape(name: "triange")
        namedShape.numSides = 3
        print(namedShape.simpleDescription())
    }
    
    func squares() {
        let square = Square(sideLength: 5.2, name: "Test square")
        print(square.area())
        print(square.simpleDescription())
    }
    
    func basics() {
        let basics = Basics()
        basics.basicVariables()
        basics.basicStrings()
    }
	
	func greet (name:String, day:String) -> String {
		return "Hello \(name), today is \(day)"
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	

}

