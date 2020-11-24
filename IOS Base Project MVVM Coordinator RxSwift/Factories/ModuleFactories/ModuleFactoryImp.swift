//
//  ModuleFactoryImp.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation

// MARK: - splash
final class ModuleFactoryImp: ModuleFactory {
    
    func makeSplashOutput() -> SplashView {
        let vc = SplashVC()
        return vc
    }
    
}

// MARK: - HERO
extension ModuleFactoryImp {
    func makeHeroOutput() -> HeroView {
        let vc = HeroVC()
        return vc
    }
    
    func makeHeroDetailOutput() -> HeroDetailView {
        let vc = HeroDetailVC()
        return vc
    }
}

// MARK: - AUTH
extension ModuleFactoryImp {
    func makeLoginOutput() -> LoginView {
        let vc = LoginVC()
        return vc
    }
    
    func makeSignUpOutput() -> SignUpView {
        let vc = SignUpVC()
        return vc
    }
    
    func makeTermsOutput() -> TermsView {
        let vc = TermsVC()
        return vc
    }
}
