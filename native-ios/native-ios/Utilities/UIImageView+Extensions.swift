//
//  UIImageView+Extensions.swift
//  native-ios
//
//  Created by Sasha Prokhorenko on 31.03.18.
//  Copyright © 2018 Sasha Prokhorenko. All rights reserved.
//

import UIKit

extension UIImageView {

	/// Set image from a URL.
	///
	/// - Parameters:
	///   - url: URL of image.
	///   - contentMode: imageView content mode (default is .scaleAspectFit).
	///   - placeHolder: optional placeholder image
	///   - completionHandler: optional completion handler to run when download finishs (default is nil).
	func download(
			from url: URL,
			contentMode: UIViewContentMode = .scaleAspectFill,
			placeholder: UIImage? = nil,
			completionHandler: ((UIImage?) -> Void)? = nil) {
			image = placeholder
			self.contentMode = contentMode
			URLSession.shared.dataTask(with: url) { (data, response, _) in
				guard
					let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
					let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
					let data = data,
					let image = UIImage(data: data)
					else {
						completionHandler?(nil)
						return
				}
				DispatchQueue.main.async {
					self.image = image
					completionHandler?(image)
				}
			}.resume()
	}
}
