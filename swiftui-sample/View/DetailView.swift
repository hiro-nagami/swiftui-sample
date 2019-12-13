//
//  DetailView.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/11/28.
//  Copyright © 2019 hiro. All rights reserved.
//

import SwiftUI

struct DetailView: DetailPresenterOutput, View {
    var presenter: DetailPresenter

    var body: some View {
        VStack {
            HStack {
                Text("\(self.presenter.detail.id)")
                Text(self.presenter.detail.name)
                Button(action: {
                    self.presenter.toggleLike()
                }) {
                    if (self.presenter.detail.isLiked) {
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
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let taro = Detail(id: 1, name: "Taro")
        let detailList = DetailList(details: [taro])
        let detail = detailList.details[0]
        let presenter = DetailPresenterImpl(detail: detail, detailList: detailList)
        let view = DetailView(presenter: presenter)
        presenter.inject(view: view)

        return view
    }
}
