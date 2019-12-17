//
//  ObservableModelTests.swift
//  swiftui-sampleTests
//
//  Created by Nagamine Hiromasa on 2019/12/16.
//  Copyright © 2019 hiro. All rights reserved.
//

import XCTest
import Combine
import SwiftUI

class ViewMock: LightSamplePresenterOutput {
    internal var presenter: LightSamplePresenter
    private(set) var color: Color = .black

    init(presenter: LightSamplePresenter) {
        self.presenter = presenter
    }

    func didSelect() {
        self.presenter.toggleLightColor()
    }

    func didUpdateLightColor(color: Color) {
        self.color = color
    }
}

class ObservableModelTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLightModel() {
        let light = LightModel()
        let presenter = LightSamplePresenterImpl(light: light)
        let view = ViewMock(presenter: presenter)
        presenter.inject(view: view)

        XCTAssertFalse(light.isTurnOn)
        XCTAssertEqual(view.color, .black)

        view.didSelect()

        XCTAssertTrue(light.isTurnOn)
        XCTAssertEqual(view.color, .yellow)

        view.didSelect()

        XCTAssertFalse(light.isTurnOn)
        XCTAssertEqual(view.color, .black)
    }
}
