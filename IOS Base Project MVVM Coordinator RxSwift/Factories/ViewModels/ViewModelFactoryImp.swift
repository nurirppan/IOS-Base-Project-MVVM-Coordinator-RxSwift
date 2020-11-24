//
//  ViewModelFactoryImp.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation

final class ViewModelFactoryImp: ViewModelFactory {
    
    func makeHeroVM() -> HeroVM {
        return HeroVM()
    }
    
    func makeHeroDetailVM() -> HeroDetailVM {
        return HeroDetailVM()
    }
}
