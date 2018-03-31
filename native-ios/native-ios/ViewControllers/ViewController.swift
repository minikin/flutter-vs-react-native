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
																		itemHeight: 80,
																		inset: 5,
																		spacing: 5,
																		lineSpacing: 5)
			photosCollectionView.collectionViewLayout = layout
			photosCollectionView.dataSource = photoDataSourse
			photosCollectionView.delegate = self
			photosCollectionView.reloadData()
		}
	}
	
	// MARK: - Instance properties

	private var photos = [Photo]()

	// MARK: - ViewController LifeCycle

	override func viewDidLoad() {
		super.viewDidLoad()

	}

	// MARK: - Helpers

	

}

	// MARK: - UICollectionViewDelegate

extension ViewController: UICollectionViewDelegate {}
