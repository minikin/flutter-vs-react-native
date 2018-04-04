//
//  ViewController.swift
//  native-ios
//
//  Created by Sasha Prokhorenko on 23.03.18.
//  Copyright © 2018 Sasha Prokhorenko. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

	// MARK: - Injections

	private var photoDataSourse = ItemsDataSource(items: [Photo](),
																								cellDescriptor: { $0.cellDescriptor })

	// MARK: - IBOutlets

	@IBOutlet private weak var photosCollectionView: UICollectionView! {
		didSet {
			let layout = CommonFlowLayout(columns: 1,
																		itemHeight: 200,
																		inset: 5,
																		spacing: 5,
																		lineSpacing: 5)
			photosCollectionView.collectionViewLayout = layout
			photosCollectionView.dataSource = photoDataSourse
			photosCollectionView.delegate = self
		}
	}

	// MARK: - ViewController LifeCycle

	override func viewDidLoad() {
		super.viewDidLoad()
		fetchData { results in
			self.photoDataSourse.items = results
			DispatchQueue.main.async {
				self.photosCollectionView.reloadData()
			}
		}
	}

	// MARK: - Helpers

	func fetchData(_ completion: @escaping ([Photo]) -> Void) {
		guard let url =  URL(string: "https://jsonplaceholder.typicode.com/photos") else {
			return
		}
		URLSession.shared.dataTask(with: url) { (data, _, error) in
			if error == nil {
				guard let data =  data else {
					return
				}
				do {
					let photos =  try JSONDecoder().decode([Photo].self, from: data)
					completion(photos)
				} catch let jsonError {
					print(jsonError)
				}
			} else {
				print(error!)
			}
		}.resume()
	}

}

	// MARK: - UICollectionViewDelegate

extension ViewController: UICollectionViewDelegate {
}
