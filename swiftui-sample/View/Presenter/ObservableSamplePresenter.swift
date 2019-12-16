//
//  ObservableSamplePresenter.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2019/12/16.
//  Copyright © 2019 hiro. All rights reserved.
//

import Foundation
import SwiftUI

protocol LightSamplePresenter {
    var light: LightModel { get }

    func toggleLightColor()
}

protocol LightSamplePresenterOutput {
    var presenter: LightSamplePresenter { get }
    func didUpdateLightColor(color: Color)
}
