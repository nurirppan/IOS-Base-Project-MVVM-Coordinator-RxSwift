//
//  ApiServiceImp.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation
import RxSwift
import RxCocoa

final class ApiServiceImp: ApiServices {
    
    static var shared = ApiServiceImp()
    lazy var requestObservable = RequestObservable(config: .default)
    
    func makeRecipesApi() -> RecipesApi {
        return RecipesApi()
    }
    
    func makeHeroesApi() -> HeroesApi {
        return HeroesApi()
    }
    
    func makeHeroStatusApi() -> HeroStatusApi {
        return HeroStatusApi()
    }
}
