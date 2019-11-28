//
//  ListViewSample.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/11/28.
//  Copyright © 2019 hiro. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Data: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
}

struct Row: View {
    var data: Data
    var body: some View {
        Text(data.name)
    }
}

struct ListSampleView: View {
    var datas: [Data] = [
        Data(id: 1, name: "Taro"),
        Data(id: 2, name: "Hanako")
    ]

    var body: some View {
        NavigationView {
            List(datas, id: \.id) { (data) in
                NavigationLink(destination: DetailView(data: data)) {
                    Row(data: data)
                }
            }
        }
    }
}


struct ListSampleView_Previews: PreviewProvider {
    static var previews: some View {
        ListSampleView()
    }
}
