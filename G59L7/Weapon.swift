//
//  Weapon.swift
//  G59L7
//
//  Created by Ivan Vasilevich on 12/21/17.
//  Copyright © 2017 RockSoft. All rights reserved.
//

import UIKit


class Weapon: NSObject {
	
	enum Material {
		case wood
		case iron
		case plastic
		case titan
	}

	var damage = 0
	var name = ""
	var madeOf: Material?
//	var material: Material = Material.plastic
//	var material = Material.plastic
}
