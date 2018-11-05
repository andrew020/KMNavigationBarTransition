//
//  NavigationBarData.swift
//  KMNavigationBarTransition
//
//  Created by Zhouqi Mo on 1/1/16.
//  Copyright © 2017 Zhouqi Mo. All rights reserved.
//

import UIKit

struct NavigationBarData {
    
    static let BarTintColorArray: [NavigationBarBackgroundViewColor] = [.Cyan, .Yellow, .Green, .Orange, .lightGray, .NoValue]
    static let TintColorArray: [NavigationBarBackgroundViewColor] = [.Black, .White]
    static let BarTitleColorArray: [NavigationBarBackgroundViewColor] = [.Black, .White]
    static let BackgroundImageColorArray: [NavigationBarBackgroundViewColor] = [.NoValue, .Transparent, .Cyan, .Yellow, .Green, .Orange, .lightGray]
    
    var barTintColor = NavigationBarData.BarTintColorArray.first!
    var tintColor = NavigationBarData.TintColorArray.first!
    var barTitleColor = NavigationBarData.BarTitleColorArray.first!
    var backgroundImageColor = NavigationBarData.BackgroundImageColorArray.first!
    var prefersHidden = false
    var prefersShadowImageHidden = false

}

enum NavigationBarBackgroundViewColor: String {
    case Cyan
    case Yellow
    case Green
    case Orange
    case lightGray
    case White
    case Black
    case Transparent
    case NoValue = "No Value"
    
    var toUIColor: UIColor? {
        switch self {
        case .Cyan:
            return UIColor.cyan
        case .Yellow:
            return UIColor.yellow
        case .Green:
            return UIColor.green
        case .Orange:
            return UIColor.orange
        case .lightGray:
            return UIColor.lightGray
        case .White:
            return UIColor.white
        case .Black:
            return UIColor.black
        default:
            return nil
        }
    }
    
    var toDic: [String: Any]? {
        switch self {
        default:
            if let color = toUIColor {
                return [NSFontAttributeName: UIFont.systemFont(ofSize: 20), NSForegroundColorAttributeName: color]
            } else {
                return nil
            }
        }
    }
    
    var toUIImage: UIImage? {
        switch self {
        case .Transparent:
            return UIImage()
        default:
            if let color = toUIColor {
                return UIImage(color: color)
            } else {
                return nil
            }
        }
    }
}

