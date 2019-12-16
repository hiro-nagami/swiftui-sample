//
//  ObservableModel.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/16.
//  Copyright © 2019 hiro. All rights reserved.
//

import Foundation
import Combine

class ObservableModel: ObservableObject {
    var objectWillChange = PassthroughSubject<ObservableModel, Never>()

    var isSelected: Bool = false {
        didSet {
            self.objectWillChange.send(self)
        }
    }
}
