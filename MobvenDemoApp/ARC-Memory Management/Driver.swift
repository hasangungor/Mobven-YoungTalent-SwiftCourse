//
//  Driver.swift
//  MobvenARCApp
//
//  Created by mobven-macbook on 2.07.2022.
//

import Foundation

class Driver {
    let name: String
    let age: String
    var car: Car? // todo: show weak example
    
    init(name: String, age: String) {
        self.name = name
        self.age = age
    }
    
    deinit {
        print("Driver instance is deinitialized.")
    }
}
