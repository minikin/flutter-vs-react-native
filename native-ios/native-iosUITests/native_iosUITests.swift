//
//  native_iosUITests.swift
//  native-iosUITests
//
//  Created by Sasha Prokhorenko on 31.03.18.
//  Copyright © 2018 Sasha Prokhorenko. All rights reserved.
//

import XCTest

class native_iosUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
			let app = XCUIApplication()
			let collectionViewsQuery = app.collectionViews
			let element = collectionViewsQuery.children(matching: .cell).element(boundBy: 1).children(matching: .other).element
			element.swipeUp()
			element.swipeUp()
			element.swipeUp()
			element.swipeUp()
			element.swipeUp()
			element.swipeUp()
			element.swipeUp()
			element.swipeUp()
			element.swipeUp()
			element.swipeUp()
			element.swipeUp()
			element.swipeUp()
			element.swipeDown()
			element.swipeDown()
			element.swipeDown()
			element.swipeDown()
			element.swipeDown()
    }
    
}
