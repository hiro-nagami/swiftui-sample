//
//  ContentView.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/11/23.
//  Copyright © 2019 hiro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                // Blue Circle (behind)
                Circle()
                    .foregroundColor(.blue)

                // Green Half Rectangle (ahead)
                Rectangle()
                    .size(width: geometry.size.width / 2.0, height: geometry.size.height)
                    .foregroundColor(.green)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
