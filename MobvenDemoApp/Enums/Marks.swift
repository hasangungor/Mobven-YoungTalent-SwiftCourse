//
//  Marks.swift
//  MobvenDemoApp
//
//  Created by mobven-macbook on 2.07.2022.
//

import Foundation

/// Example of Associated Values in Enums
enum Marks {
    
    // associate multiple Double values
    case gpa(Double, Double, Double)
    
    // associate multiple String values
    case grade(String, String, String)

    func logStudentMark() {
        switch self {
        case .gpa(let first, let second, let third):
            print("Average: \((first + second + third) / 3)")
        case .grade(_, _, let grade3):
            print("Last Grade: \(grade3)")
        }
    }
    
}
