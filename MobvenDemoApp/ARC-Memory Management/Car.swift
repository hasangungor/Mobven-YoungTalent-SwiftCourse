//
//  Car.swift
//  MobvenARCApp
//
//  Created by mobven-macbook on 2.07.2022.
//

import Foundation

class Car {
    let model: String
    let brand: String
    var owner: Driver? // todo: show weak example
    
    init(brand: String, model: String) {
        self.model = model
        self.brand = brand
    }
    
    deinit {
        print("Car instance is deinitialized.")
    }
}
