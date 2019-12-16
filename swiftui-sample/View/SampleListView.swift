//
//  SampleListView.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/16.
//  Copyright © 2019 hiro. All rights reserved.
//

import Foundation
import SwiftUI

struct SampleListView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: observableSampleView()) {
                    Text("Observable Sample")
                }

                NavigationLink(destination: detailListView()) {
                    Text("Detail List Sample")
                }

                NavigationLink(destination: ZStackSampleView()) {
                    Text("Detail List Sample")
                }

                NavigationLink(destination: toggleSampleView()) {
                    Text("Toggle Sample")
                }
            }
        }.navigationBarTitle(Text("Sample"))
    }

    func toggleSampleView() -> some View {
        let toggleSampleModel = ToggleSampleModel()
        return ToggleSampleView().environmentObject(toggleSampleModel)
    }

    func detailListView() -> some View {
        let taro = Detail(id: 1, name: "Taro")
        let hanako = Detail(id: 2, name: "Taro")
        let detailList = DetailList(details: [taro, hanako])
        return ListSampleView().environmentObject(detailList)
    }

    func observableSampleView() -> some View {
        let light = LightModel()
        return LightSampleView(light: light)
    }
}
