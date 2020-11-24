//
//  HeroesResponse.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation

struct HeroesResponse: Codable {
    let id: Int
    let name, localizedName: String
    let primaryAttr: String
    let attackType: String
    let roles: [String]
    let legs: Int

    enum CodingKeys: String, CodingKey {
        case id, name
        case localizedName = "localized_name"
        case primaryAttr = "primary_attr"
        case attackType = "attack_type"
        case roles, legs
    }
}

//enum AttackType: String, Codable {
//    case melee = "Melee"
//    case ranged = "Ranged"
//}
//
//enum PrimaryAttr: String, Codable {
//    case agi = "agi"
//    case int = "int"
//    case str = "str"
//}
//
//enum Role: String, Codable {
//    case carry = "Carry"
//    case disabler = "Disabler"
//    case durable = "Durable"
//    case escape = "Escape"
//    case initiator = "Initiator"
//    case jungler = "Jungler"
//    case nuker = "Nuker"
//    case pusher = "Pusher"
//    case support = "Support"
//}
