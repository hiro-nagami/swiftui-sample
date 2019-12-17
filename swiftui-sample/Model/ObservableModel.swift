//
//  ObservableModel.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/16.
//  Copyright © 2019 hiro. All rights reserved.
//

import Foundation
import Combine

class LightModel: ObservableObject {
    var objectWillChange = PassthroughSubject<LightModel, Never>()

    var isTurnOn: Bool = false {
        didSet {
            self.objectWillChange.send(self)
        }
    }
}
