//
//  SimpleList.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2020/05/03.
//  Copyright © 2020 hiro. All rights reserved.
//

import Foundation
import SwiftUI

struct SimpleList: View {
    let productions: [Production] = [
        Production(id: "1",
                   name: "Trash",
                   imageName: "trash",
                   price: 100),
        Production(id: "2",
                   name: "Star Key ring",
                   imageName: "star",
                   price: 300),
        Production(id: "3",
                   name: "Book",
                   imageName: "book",
                   price: 300),
    ]

    var body: some View {
        List (productions) { production in
            SimpleRow(production: production)
        }
    }
}

struct SimpleList_Previews: PreviewProvider {
    static var previews: some View {
        SimpleList()
    }
}
