//
//  UIColor+RandomColor.swift
//  Button Fun
//
//  Created by Noemi Quezada on 2/12/17.
//  Copyright © 2017 Noemi Quezada. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func random() -> UIColor {
        let red: CGFloat = CGFloat(drand48())
        let green: CGFloat = CGFloat(drand48())
        let blue: CGFloat = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
