//
//  PhotoCell.swift
//  native-ios
//
//  Created by Sasha Prokhorenko on 31.03.18.
//  Copyright © 2018 Sasha Prokhorenko. All rights reserved.
//

import UIKit

final class PhotoCell: UICollectionViewCell {

	// MARK: - Instance properties

	@IBOutlet weak var photoView: UIImageView!

	// MARK: - Object LifeCycle

	override func prepareForReuse() {
		super.prepareForReuse()
		photoView.image = nil
	}
}
