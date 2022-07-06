//
//  BMW.swift
//  MobvenDemoApp
//
//  Created by mobven-macbook on 2.07.2022.
//

import Foundation
import UIKit.UIColor

enum BMW {
    case sedan(hp: String, color: BMWColor)
    case suv(hp: String, color: BMWColor)
    case cabrio(hp: String, color: BMWColor)
    
    
    enum BMWColor {
        case red
        case estorilBlue
        case opaqueWhite
        
        var colorName: String {
            switch self {
            case .red:
                return "Red"
            case .estorilBlue:
                return "Estoril Blue"
            case .opaqueWhite:
                return "Opaque White"
            }
        }
    }
    
    func showLog() {
        switch self {
        case .sedan(let hp, let color):
            print("\(color.colorName) Sedan BMW with \(hp) Horsepower")
        case .suv(let hp, let color):
            print("\(color.colorName) SUV BMW with \(hp) Horsepower")
        case .cabrio(let hp, let color):
            print("\(color.colorName) Cabrio BMW with \(hp) Horsepower")
        }
    }
}
