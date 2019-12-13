//
//  DataPresenter.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/13.
//  Copyright © 2019 hiro. All rights reserved.
//

import Combine
import SwiftUI

protocol DetailPresenter {
    var detail: Detail { get }
    var detailList: DetailList { get }
    var detailIndex: Int { get }
    
    func toggleLike()
}

protocol DetailPresenterOutput {
    var presenter: DetailPresenter { get }
}

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
