//
//  Weapon.swift
//  G59L7
//
//  Created by Ivan Vasilevich on 12/21/17.
//  Copyright © 2017 RockSoft. All rights reserved.
//

import UIKit



class Weapon: NSObject {
	
	let maxDamage = 100
	
	enum Material {
		case wood
		case iron
		case plastic
		case titan
		case none
	}
	
	override var description: String {
		var result = ""
		result += "damage \t= \(damage)\n"
		result += "madeOf \t= \(madeOf ?? .none)\n"
		result += "name \t= \(name)"
		return result
	}

	var damage: Int = 0 {
		didSet {
			if damage > maxDamage {
				damage = oldValue
			}
		}
	}
	var name = ""
	var madeOf: Material?
//	var material: Material = Material.plastic
//	var material = Material.plastic
}
