//
//  ToggleSampleModel.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/07.
//  Copyright © 2019 hiro. All rights reserved.
//

import SwiftUI
import Combine

final class ToggleSampleModel: ObservableObject {
    @Published var isToggleOn = false
}
