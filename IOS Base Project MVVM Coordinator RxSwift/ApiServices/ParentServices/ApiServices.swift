//
//  ApiServices.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation
import RxSwift
import RxCocoa

protocol ApiServices {
    func makeRecipesApi() -> RecipesApi
    func makeHeroesApi() -> HeroesApi
    func makeHeroStatusApi() -> HeroStatusApi
}
