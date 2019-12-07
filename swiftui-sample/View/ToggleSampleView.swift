//
//  ToggleSampleView.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/07.
//  Copyright © 2019 hiro. All rights reserved.
//

import SwiftUI

struct ToggleSampleView: View {
    @EnvironmentObject var toggleSample: ToggleSampleModel

    var body: some View {
        List {
            Toggle(isOn: $toggleSample.isToggleOn) {
                Text("sample")
            }

            if (toggleSample.isToggleOn) {
                Circle().foregroundColor(.blue)
                Circle().foregroundColor(.blue)
            }
        }
    }
}

struct ToggleSampleView_preview: PreviewProvider {
    static var previews: some View {
        ToggleSampleView().environmentObject(ToggleSampleModel())
    }
}

