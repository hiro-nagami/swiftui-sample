//
//  DetailList.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/07.
//  Copyright © 2019 hiro. All rights reserved.
//

import Combine

class DetailList: ObservableObject {
    @Published var isLikedOnly: Bool = false
    @Published var details: [Detail] =  [
       Detail(id: 1, name: "Taro"),
       Detail(id: 2, name: "Hanako")
   ]
}
