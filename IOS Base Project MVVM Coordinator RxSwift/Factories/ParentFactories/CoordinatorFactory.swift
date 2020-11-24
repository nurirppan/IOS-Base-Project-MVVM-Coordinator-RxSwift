//
//  CoordinatorFactory.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation


protocol CoordinatorFactory {
    
    func makeAuthCoordinatorBox(router: Router) -> Coordinator & AuthCoordinatorOutput
    
    func makeSplashCoordinator(router: Router) -> Coordinator & SplashCoordinatorOutput
    
    func makeHeroCoordinator(router: Router) -> Coordinator & HeroCoordinatorOutput
    
}
