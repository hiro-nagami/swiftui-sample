//
//  Detail.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/07.
//  Copyright © 2019 hiro. All rights reserved.
//

import Foundation

struct Detail: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var isLiked: Bool = false
}
