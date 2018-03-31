//
//  ViewController.swift
//  native-ios
//
//  Created by Sasha Prokhorenko on 23.03.18.
//  Copyright © 2018 Sasha Prokhorenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	// MARK: - IBOutlets
	@IBOutlet weak var photosCollectionView: UICollectionView!

	// MARK: - ViewController LifeCycle

	override func viewDidLoad() {
		super.viewDidLoad()


	}



}

	// MARK: - UICollectionViewDataSource

extension ViewController: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 10
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

	}

}
	// MARK: - UICollectionViewDelegate

extension ViewController: UICollectionViewDelegate {

}
