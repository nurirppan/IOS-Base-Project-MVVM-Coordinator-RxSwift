//
//  PostResponse.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation

struct PostResponse: Codable {
    var id: Int
    var userId: Int
    var title: String
    var body: String
}
