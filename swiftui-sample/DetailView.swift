//
//  DetailView.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/11/28.
//  Copyright © 2019 hiro. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var data: Data
    var body: some View {
        HStack {
            Text("\(data.id)")
            Text(data.name)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: Data(id: 0, name: "dummy"))
    }
}
