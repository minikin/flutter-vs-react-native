//
//  CellDescriptor.swift
//  native-ios
//
//  Created by Sasha Prokhorenko on 31.03.18.
//  Copyright © 2018 Sasha Prokhorenko. All rights reserved.
//

import UIKit

struct CellDescriptor {
	let cellClass: UICollectionViewCell.Type
	let reuseIdentifier: String
	let configure: (UICollectionViewCell) -> Void
	init<Cell: UICollectionViewCell>(reuseIdentifier: String, configure: @escaping (Cell) -> Void) {
		self.cellClass = Cell.self
		self.reuseIdentifier = reuseIdentifier
		self.configure = { cell in
			configure(cell as! Cell)
		}
	}
}
