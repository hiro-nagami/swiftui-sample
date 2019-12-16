//
//  DataTest.swift
//  swiftui-sampleTests
//
//  Created by Nagamine Hiromasa on 2019/12/13.
//  Copyright © 2019 hiro. All rights reserved.
//

import XCTest

class DataTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let taro = Detail(id: 1, name: "Taro")
        let hanako = Detail(id: 2, name: "Hanako")
        let detailList = DetailList(details: [taro, hanako])
        let presenter = DetailPresenterImpl(detail: hanako, detailList: detailList)
        let view = DetailView(presenter: presenter)
        presenter.inject(view: view)

        XCTAssertEqual(view.presenter.detailIndex, 1)
        XCTAssertEqual(view.presenter.detail.id, hanako.id)
        XCTAssertEqual(view.presenter.detail.isLiked, false)

        presenter.toggleLike()
        XCTAssertEqual(view.presenter.detail.isLiked, true)
    }
}
