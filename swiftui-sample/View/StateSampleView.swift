//
//  StateSampleView.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/25.
//  Copyright © 2019 hiro. All rights reserved.
//

import SwiftUI

struct StateSampleView: View {
    @State var isSelected: Bool = false

    var body: some View {
        VStack {
            Button(action: {
                self.isSelected = !self.isSelected
            }) {
                Text("Change Color")
            }

            Circle().foregroundColor(isSelected ? .blue : .yellow)
        }
    }
}

struct StateSampleView_preview: PreviewProvider {
    static var previews: some View {
        StateSampleView()
    }
}

