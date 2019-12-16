//
//  ObservableModelTest.swift
//  swiftui-sampleTests
//
//  Created by Nagamine Hiromasa on 2019/12/16.
//  Copyright © 2019 hiro. All rights reserved.
//

import XCTest
import Combine
import SwiftUI

struct TestView {
    @ObservedObject var model: ObservableModel
    func select() {
        model.isSelected = true
    }

    func unselect() {
        model.isSelected = false
    }
}

class ObservableModelTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let model = ObservableModel()
        let view = TestView(model: model)

        XCTAssertFalse(model.isSelected)

        view.select()

        XCTAssertTrue(model.isSelected)

        view.unselect()

        XCTAssertFalse(model.isSelected)
    }
}
