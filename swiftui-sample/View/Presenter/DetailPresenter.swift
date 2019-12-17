//
//  DataPresenter.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/13.
//  Copyright © 2019 hiro. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

protocol DetailPresenter {
    var detail: Detail { get }
    var detailList: DetailList { get }
    var detailIndex: Int { get }
    
    func toggleLike()
}

protocol DetailPresenterOutput {
    var presenter: DetailPresenter { get }
}
