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
                NavigationLink(destination: lightSampleView()) {
                    Text("Light Sample (Observable & Clean Architecture)")
                }

                NavigationLink(destination: detailListView()) {
                    Text("Detail List Sample (EnvironmentObject)")
                }

                NavigationLink(destination: ZStackSampleView()) {
                    Text("ZStack Sample")
                }

                NavigationLink(destination: toggleSampleView()) {
                    Text("Toggle Sample")
                }

                NavigationLink(destination: StateSampleView()) {
                    Text("State Sample")
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

    func lightSampleView() -> some View {
        let light = LightModel()
        let lightSamplePresenter = LightSamplePresenterImpl(light: light)
        let view = LightSampleView(presenter: lightSamplePresenter)
        lightSamplePresenter.inject(view: view)
        return view
    }
}
