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

struct ObservableSampleView: View {
    @ObservedObject var model: ObservableModel
//    @ObservedObject(initialValue: ObservableModel()) var model: ObservableModel

    var body: some View {
        VStack {
            Button(action: {
                self.model.isSelected = !self.model.isSelected
            }) {
                Text("Change Color")
            }
            Circle().foregroundColor(model.isSelected ? .blue : .yellow)
        }
    }
}
