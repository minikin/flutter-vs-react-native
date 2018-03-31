//
//  Photo.swift
//  native-ios
//
//  Created by Sasha Prokhorenko on 31.03.18.
//  Copyright © 2018 Sasha Prokhorenko. All rights reserved.
//

import UIKit

struct Photo: Codable {

	let photoId: Int
	let photoUrlPath: String

	enum CodingKeys: String, CodingKey {
		case photoId = "id"
		case photoUrlPath = "url"
	}
}

extension Photo {
	func configureCell(_ cell: PhotoCell) {
		cell.photoView.image = UIImage()
	}
}

extension Photo {
	var cellDescriptor: CellDescriptor {
		return CellDescriptor(reuseIdentifier: "PhotoCell", configure: self.configureCell)
	}
}
