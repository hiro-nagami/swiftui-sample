//
//  DetailPresenterImpl.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/16.
//  Copyright © 2019 hiro. All rights reserved.
//

import Foundation
import Combine
import SwiftUI


class DetailPresenterImpl: DetailPresenter {
    @ObservedObject internal var detailList: DetailList
    internal var detail: Detail
    private var view: DetailPresenterOutput?

    var detailIndex: Int {
        self.detailList.details.firstIndex(where: { $0.id == self.detail.id })!
    }

    init(detail: Detail, detailList: DetailList) {
        self.detail = detail
        self.detailList = detailList
    }

    func inject(view: DetailPresenterOutput) {
        self.view = view
    }

    func toggleLike() {
        self.detail.isLiked.toggle()
    }
}
