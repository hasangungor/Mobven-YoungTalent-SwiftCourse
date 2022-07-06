//
//  Amenities.swift
//  MobvenDemoApp
//
//  Created by mobven-macbook on 2.07.2022.
//

import Foundation
import UIKit

enum Amenities: CaseIterable {
    
    case wifi
    case park
    case airConditioner
    case tv
    
    var icon: UIImage {
        switch self {
        case .wifi:
            return UIImage(systemName: "wifi.circle")!
        case .park:
            return UIImage(systemName: "parkingsign.circle.fill")!
        case .airConditioner:
            return UIImage(systemName: "fanblades")!
        case .tv:
            return UIImage(systemName: "tv")!
        }
    }
    
    var title: String {
        switch self {
        case .wifi:
            return "Wifi"
        case .park:
            return "Parking"
        case .airConditioner:
            return "Air Conditioner"
        case .tv:
            return "Television"
        }
    }
}

// RawValue example: String
enum Compass: String {
    case north
    case west
    case south
    case east
}
