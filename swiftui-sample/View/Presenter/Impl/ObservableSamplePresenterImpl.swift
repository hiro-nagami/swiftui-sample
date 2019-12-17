//
//  ObservableSamplePresenterImpl.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/16.
//  Copyright © 2019 hiro. All rights reserved.
//

import Foundation
import Combine
import SwiftUI


class LightSamplePresenterImpl: LightSamplePresenter {
    internal var light: LightModel
    private var view: LightSamplePresenterOutput?
    private var cancellable: AnyCancellable?

    init(light: LightModel) {
        self.light = light
        self.cancellable = self.light.objectWillChange.sink { currentLight in
            self.view?.didUpdateLightColor(color: currentLight.isTurnOn ? .yellow : .black)
        }
    }

    func toggleLightColor() {
        self.light.isTurnOn = !self.light.isTurnOn
    }

    func inject(view: LightSamplePresenterOutput) {
        self.view = view
    }
}

