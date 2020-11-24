//
//  MutableCollection+Extension.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation

public extension MutableCollection where Element: StringProtocol, Self: RandomAccessCollection {
    mutating func sortNumerically(ascending: Bool = true) {
        let result: ComparisonResult = ascending ? .orderedAscending : .orderedDescending
        return sort { $0.compare($1, options: .numeric) == result }
    }
}
