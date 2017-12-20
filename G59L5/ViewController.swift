//
//  ViewController.swift
//  G59L5
//
//  Created by Ivan Vasilevich on 12/14/17.
//  Copyright © 2017 RockSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		
		playWithDictionary()
	}
	
	func workWithStrings() {
		let greeting = "hello world"
		let str2 = "heppy"
		
		let fullGreeting = greeting + " " + str2
		
		print(fullGreeting)
		let points = arc4random()%200
		let score: String = "score: \(points)" // score: 311
		print(score)
		print(score.count)
		let nsScore = score as NSString
		print(nsScore.length)
		let prostoScore = nsScore.substring(to: 7)
		print(prostoScore)
	}
	
	func workWithArray() {
		var a = 5
		var numbers = [2, a, 16, 19]
		a = 10
		let secondNumber = numbers[1]
		numbers[numbers.count - 1] = 21
		numbers.append(777)
		//		print(numbers)
		
		var dzArray = Array<Int>.init()
		for _ in 0..<20 {
			dzArray.append(Int(arc4random()%10))
		}
		
		for i in 0..<dzArray.count {
			let number = dzArray[i]
			print(number)
		}
		
		for number in dzArray {
			print(number)
		}
		
		
		print("dzArray = \(dzArray)")
	}
	
	func playWithOptional() {
		//		var a: Int
		//		if arc4random()%90 < 100 {
		//			a = 19
		//		}
		//		print(a)
		
		let numberInString = "5.5"
		var intFromNumberInString = Double(numberInString)
		intFromNumberInString = nil
		
		if let realNumber = intFromNumberInString {
			print("intFromNumberInString = \(realNumber)")
		}
		else {
			print("intFromNumberInString = nil")
		}
		
		var nePustoyArrey = [Int]()// [Int].init() //
		//		nePustoyArrey.append(88)
		//		print(nePustoyArrey.first!)
		let defaultCandyCountInPlate = 20
		print("CandyCountInPlate = \(nePustoyArrey.first ?? defaultCandyCountInPlate)")
		//		print(intFromNumberInString + 5)
		//		let a: Int? = 5
		
	}
	
	func playWithDictionary() {
		
		let phoneBook = ["gas" 			: 104,
						 "police" 		: 102,
						 "ambulance" 	: "103"] as [String : Any]//[String : String]()
		let jamesBond007Phone = phoneBook["gaz"]
		print(jamesBond007Phone ?? "nubber not found")
		
		if let pockets = phoneBook["pockets"] as? [String] {
			if let smallJeansPocket = pockets.last {
				print(smallJeansPocket)
			}
		}
		
		let dictFromFile = NSDictionary.init(contentsOfFile: "/Users/ivanvasilevich/Desktop/Property List.plist")
		print(dictFromFile!)
		if let normalDict = dictFromFile as? [String : Any] {
			print(normalDict["numberHello"]!)
		}
		
		
	}
}

