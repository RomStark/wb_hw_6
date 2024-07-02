//
//  Passport.swift
//  wb_hw_6
//
//  Created by Al Stark on 01.07.2024.
//

import Foundation


final class Passport {
    let series: Int
    let number: Int
    let issueDate: Date
    weak var person: Person?

    init(series: Int, number: Int, issueDate: Date) {
        self.series = series
        self.number = number
        self.issueDate = issueDate
        print("инициализация паспорта \(series) \(number)")
    }

    deinit {
        print("пасспорт \(series) \(number) деинициализироался")
    }
}
