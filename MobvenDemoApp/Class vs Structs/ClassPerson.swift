//
//  Person.swift
//  MobvenDemoApp
//
//  Created by mobven-macbook on 2.07.2022.
//

import Foundation

/// Reference Type - Person
class ClassPerson {
    let name: String
    let surname: String
    var bodyMeasurement: BodyMeasurement
    
    init(name: String, surname: String, bodyMeasurement: BodyMeasurement) {
        self.name = name
        self.surname = surname
        self.bodyMeasurement = bodyMeasurement
    }
}

class CheckoutBasket {
    var product: Product?
    
    func transaction() {
        print("Ödeme yapıldı")
    }
}



