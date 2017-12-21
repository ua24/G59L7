//
//  ViewController.swift
//  G59L7
//
//  Created by Ivan Vasilevich on 12/21/17.
//  Copyright © 2017 RockSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var ammoProgressView: UIProgressView!
	let rocketLauncher = Weapon.init()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let revolver = Weapon()
		revolver.madeOf = .iron
		revolver.name = "Colt Petrovich"
		revolver.damage = 25
		
		
		rocketLauncher.damage = 100500
		rocketLauncher.name = "BFG"
		rocketLauncher.madeOf = .titan
		
		
		print(revolver.description)
		
		print(rocketLauncher)
		
	}
	
	@IBAction func shoot() {
		let myWeapon = rocketLauncher
		myWeapon.shoot()
//		rocketLauncher.name
		updateProgressView()
//		print(rocketLauncher.shootCount)
	}
	
	@IBAction func reload() {
		rocketLauncher.reload()
		updateProgressView()
	}
	
	@IBAction func autoreloadSwitchChanged(_ sender: UISwitch) {
		rocketLauncher.autoReload = sender.isOn
	}
	
	func updateProgressView() {
		ammoProgressView.progress = Float(rocketLauncher.ammoCount) / 10
	}
	
}

