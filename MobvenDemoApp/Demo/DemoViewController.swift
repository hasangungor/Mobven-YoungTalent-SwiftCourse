//
//  ViewController.swift
//  MobvenDemoApp
//
//  Created by mobven-macbook on 2.07.2022.
//

import UIKit

class DemoViewController: UIViewController {

    
    @IBOutlet var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        classAndStructDemo()
        enumDemo()
        arcMemoryManagementDemo()
        appConstantColorDemo()

    }
    
    func classAndStructDemo() {
        
        // MARK: - Class (Reference Type):
        let classPersonA = ClassPerson(name: "Hasan",
                            surname: "Gungor",
                            bodyMeasurement: BodyMeasurement(height: 170, weight: 78))

        let classPersonB = classPersonA // Values are not copied, references assigned instead.
        classPersonB.bodyMeasurement.height = 180 //
        
        print("------ Class Example -------")
        print("Measurement of Person A: \(classPersonA.bodyMeasurement)")
        print("Measurement of Person B: \(classPersonB.bodyMeasurement)")
        print("----------------------------")

        
        // MARK: - Struct (Value Type):
        let structPersonA = StructPerson(name: "Ali",
                                         surname: "Veli",
                                         bodyMeasurement: BodyMeasurement(height: 190, weight: 95))
        
        var structPersonB = structPersonA // Values are copied
        structPersonB.bodyMeasurement.height = 155
        
        print("------ Struct Example -------")
        print("Measurement of Person A: \(structPersonA.bodyMeasurement)")
        print("Measurement of Person B: \(structPersonB.bodyMeasurement)")
        print("----------------------------")
    }
    
    // MARK: Enum Demo
    func enumDemo() {
        
        // MARK: Enum example - 1 (Associated Value)
        let gpa = Marks.gpa(3.50, 2.29, 3.22)
        print(gpa)
        
        let grade = Marks.grade("A", "C", "B")
        print(grade)
        
        let studentMarks = gpa
        studentMarks.logStudentMark()

       // MARK: Enum example - 2 (Associated Value)
        let bmw = BMW.sedan(hp: "240",color: .estorilBlue)
        bmw.showLog()
        
        // MARK: Enum example - 3 (Raw Value)
        let compass = Compass.east
        print(compass.rawValue)
    }
    
    // MARK: Inner struct demo
    func appConstantColorDemo() {
        titleLabel.textColor = AppConstants.Color.title
        titleLabel.font = AppConstants.Fonts.header
    }

    // MARK: ARC - Memory Management
    func arcMemoryManagementDemo() {
        var car: Car?
        var driver: Driver?
        
        driver = Driver(name: "Hasan", age: "29")
        car = Car(brand: "BMW", model: "320i")

        driver!.car = car
        car!.owner = driver

        // Deinitialize doesn't work when we assign car to driver.car and owner because strong ref cycle occurs
        driver = nil
        car = nil
    }
}

