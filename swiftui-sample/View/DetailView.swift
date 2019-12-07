//
//  DetailView.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/11/28.
//  Copyright © 2019 hiro. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var detailList: DetailList
    var detail: Detail

    var detailIndex: Int {
        detailList.details.firstIndex(where: { $0.id == detail.id })!
    }

    var body: some View {
        HStack {
            Text("\(detail.id)")
            Text(detail.name)
            Button(action: {
                self.detailList.details[self.detailIndex].isLiked.toggle()
            }) {
                if (self.detailList.details[self.detailIndex].isLiked) {
                    Rectangle()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(.yellow)
                } else {
                    Rectangle()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(.clear)
                        .border(Color.yellow)
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(detail: Detail(id: 0, name: "dummy"))
    }
}
