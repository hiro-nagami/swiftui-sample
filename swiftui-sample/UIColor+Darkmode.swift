//
//  UIColor+Darkmode.swift
//  swiftui-sample
//
//  Created by Nagamine Hiromasa on 2020/02/04.
//  Copyright © 2020 hiro. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    var rgba: (r: Int, g: Int, b: Int, a: CGFloat) {
        let ciColor = CIColor(cgColor: self.cgColor)
        return (Int(ciColor.red * 256), Int(ciColor.green * 256), Int(ciColor.blue * 256), ciColor.alpha)
    }

    static var spr: UIColor {
        if #available(iOS 13.0, *) {
            return .separator
        } else {
            return UIColor(red: 60.0/255.0, green: 60.0/255.0, blue: 67.0/255.0, alpha: 1.0)
        }
    }

    static var opaqueSpr: UIColor {
        if #available(iOS 13.0, *) {
            return .opaqueSeparator
        } else {
            return UIColor(red: 198.0/255.0, green: 198.0/255.0, blue: 200.0/255.0, alpha: 1.0)
        }
    }

    static var sysFill: UIColor {
        if #available(iOS 13.0, *) {
            return .systemFill
        } else {
            return UIColor(red: 120.0/255.0, green: 120.0/255.0, blue: 128.0/255.0, alpha: 0.2)
        }
    }

    static var secondarySysFill: UIColor {
        if #available(iOS 13.0, *) {
            return .secondarySystemFill
        } else {
            return UIColor(red: 120.0/255.0, green: 120.0/255.0, blue: 128.0/255.0, alpha: 0.16)
        }
    }

    static var lbl: UIColor {
        if #available(iOS 13.0, *) {
            return .label
        } else {
            return UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        }
    }

    static var secondaryLbl: UIColor {
        if #available(iOS 13.0, *) {
            return .secondaryLabel
        } else {
            return UIColor(red: 60.0/255.0, green: 60.0/255.0, blue: 60.0/255.0, alpha: 0.6)
        }
    }

    static var tertiaryLbl: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiaryLabel
        } else {
            return UIColor(red: 60.0/255.0, green: 60.0/255.0, blue: 60.0/255.0, alpha: 0.3)
        }
    }

    static var sysBg: UIColor {
        if #available(iOS 13.0, *) {
            return .systemBackground
        } else {
            return UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        }
    }

    static var secondarySysBg: UIColor {
        if #available(iOS 13.0, *) {
            return .secondarySystemBackground
        } else {
            return UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 242.0/255.0, alpha: 1.0)
        }
    }

    static var tertiarySysBg: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiarySystemBackground
        } else {
            return UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        }
    }
}
