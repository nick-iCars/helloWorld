//
//  ViewController.swift
//  helloWorld
//
//  Created by Nicholas Iannone on 4/28/17.
//  Copyright © 2017 iCars. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var _myLabel: UILabel!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		_myLabel.text = "goodbye world"
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBAction func buttonTapped(_ sender: UIButton) {
		_myLabel.text = "Button Tapped"
	}
	
	override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
		if let touch = touches.first {
			_myLabel.center = touch.location(in: view)
		}
	}
}

