//
//  SimpleRow.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2020/05/03.
//  Copyright © 2020 hiro. All rights reserved.
//

import Foundation
import SwiftUI

struct SimpleRow: View {
    var production: Production
    var body: some View {
        // 水平方向に並べる
        HStack {
            // 商品画像
            Image(systemName: production.imageName)

            // 商品名
            Text(production.name).padding(10)

            // スペース
            Spacer()

            // 価格
            Text("$ \(production.price)")
        }
        .padding(30)
    }
}

struct SimpleRowPreview: PreviewProvider {
    static var previews: some View {
        let production = Production(id: "1",
                                    name: "Trash",
                                    imageName: "trash",
                                    price: 100)
        return SimpleRow(production: production)
    }
}
