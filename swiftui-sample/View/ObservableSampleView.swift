//
//  ObservableSampleView.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/16.
//  Copyright © 2019 hiro. All rights reserved.
//

import Foundation
import SwiftUI

struct LightSampleView: View, LightSamplePresenterOutput {
    @ObservedObject private var light: LightModel
    var presenter: LightSamplePresenter

    init(presenter: LightSamplePresenter) {
        self.presenter = presenter
        self.light = presenter.light
    }

    func didUpdateLightColor(color: Color) {

    }

    var body: some View {
        VStack {
            Button(action: {
                self.light.isTurnOn = !self.light.isTurnOn
            }) {
                Text("Change Color")
            }
            Circle().foregroundColor(self.light.isTurnOn ? .blue : .yellow)
        }
    }
}
