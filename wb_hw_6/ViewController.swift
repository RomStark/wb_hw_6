//
//  ViewController.swift
//  wb_hw_6
//
//  Created by Al Stark on 01.07.2024.
//

import UIKit

class ViewController: UIViewController {
    var employees: [String: Person] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        testing()
    }
    
    private func add(employee person: Person) {
        employees[String(describing: person.passport.series)] = person
    }
    
    private func remove(employee: Person) {
        employees[String(describing: employee.passport.series)] = nil
    }
    
    private func testing() {
        var passport1 = Passport(
            series: 1234,
            number: 323421,
            issueDate: Date(timeIntervalSince1970: 1213)
        )
        var employee1 = Person(
            fullName: "Тапочкин тапочка тапочкович",
            age: 15,
            passport: passport1
        )
        
        passport1.person = employee1
        
        let passport2 = Passport(
            series: 4321,
            number: 245212,
            issueDate: Date(timeIntervalSince1970: 12413)
        )
        let employee2 = Person(
            fullName: "Петров Петр Петрович",
            age: 14,
            passport: passport2
        )
        passport2.person = employee2
        
        add(employee: employee1)
        add(employee: employee2)
        
        remove(employee: employee1)
        remove(employee: employee2)
    }
}

