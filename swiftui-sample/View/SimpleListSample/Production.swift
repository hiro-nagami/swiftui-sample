//
//  Production.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2020/05/03.
//  Copyright © 2020 hiro. All rights reserved.
//

import Foundation
import SwiftUI

struct Production: Identifiable {
    // ユニークID
    var id: String

    // 商品名
    var name: String

    // 商品画像
    var imageName: String

    // 価格
    var price: Int
}
