//
//  ModuleFactory.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation


protocol ModuleFactory {
    
    // MARK: - SPLASH
    func makeSplashOutput() -> SplashView
    
    // MARK: - HERO
    func makeHeroOutput() -> HeroView
    func makeHeroDetailOutput() -> HeroDetailView
    
    // MARK: - HERO
    func makeLoginOutput() -> LoginView
    func makeSignUpOutput() -> SignUpView
    func makeTermsOutput() -> TermsView
}

