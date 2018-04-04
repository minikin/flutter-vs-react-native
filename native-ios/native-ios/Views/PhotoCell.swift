//
//  PhotoCell.swift
//  native-ios
//
//  Created by Sasha Prokhorenko on 31.03.18.
//  Copyright © 2018 Sasha Prokhorenko. All rights reserved.
//

import UIKit
import AlamofireImage

final class PhotoCell: UICollectionViewCell {

	// MARK: - Instance properties

	@IBOutlet weak var photoView: UIImageView?

	override func prepareForReuse() {
		super.prepareForReuse()
		photoView?.af_cancelImageRequest()
	}
}
