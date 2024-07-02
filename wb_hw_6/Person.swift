//
//  Person.swift
//  wb_hw_6
//
//  Created by Al Stark on 01.07.2024.
//

import Foundation


final class Person {
    let fullName: String
    let age: Int
    var passport: Passport

    init(fullName: String, age: Int, passport: Passport) {
        self.fullName = fullName
        self.age = age
        self.passport = passport
        print("человек \(fullName) инициализирован")
    }

    deinit {
        print("человек\(fullName) деинициализирован")
    }
}
