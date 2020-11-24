//
//  Encodable+Extension.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation
import RxCocoa
import RxSwift

//MARK: extension for converting out RecipeModel to jsonObject
fileprivate extension Encodable {
    var dictionaryValue:[String: Any?]? {
        guard let data = try? JSONEncoder().encode(self),
              let dictionary = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            return nil
        }
        return dictionary
    }
}

