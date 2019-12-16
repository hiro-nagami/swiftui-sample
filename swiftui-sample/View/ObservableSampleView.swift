//
//  ObservableSampleView.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/16.
//  Copyright © 2019 hiro. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct LightSampleView: View {
    @ObservedObject var light: LightModel
//    @ObservedObject(initialValue: ObservableModel()) var model: ObservableModel

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
