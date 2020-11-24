//
//  Sequence+Extension.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation

extension Sequence {
    func localizedStandardSorted<T: StringProtocol>(_ predicate: (Element) -> T, ascending: Bool = true) -> [Element] {
        sorted {
            predicate($0).localizedStandardCompare(predicate($1)) ==
                (ascending ? .orderedAscending : .orderedDescending)
        }
    }
}
