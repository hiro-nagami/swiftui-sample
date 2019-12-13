//
//  ListViewSample.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/11/28.
//  Copyright © 2019 hiro. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Row: View {
    var detail: Detail
    var body: some View {
        HStack {
            Text(detail.name)

            if (detail.isLiked) {
                Spacer()
                Circle()
                    .frame(width: 10, height: 10, alignment: .center)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct ListSampleView: View {
    @EnvironmentObject var detailList: DetailList

    var body: some View {
        NavigationView {
            List {
                Text("test")
//                Toggle(isOn: $detailList.isLikedOnly) {
//                    Text("Filter only liked items")
//                }

//                ForEach(detailList.details) { (detail) in
//                    if (!self.detailList.isLikedOnly || detail.isLiked) {
//                        NavigationLink(destination: DetailView(detail: detail)) {
//                            Row(detail: detail)
//                        }
//                    }
//                }
            }
        }.navigationBarTitle(Text("Items"))
    }
}


struct ListSampleView_Previews: PreviewProvider {
    static var previews: some View {
        let taro = Detail(id: 1, name: "Taro")
        let detailList = DetailList(details: [taro])
        return ListSampleView().environmentObject(detailList)
    }
}
