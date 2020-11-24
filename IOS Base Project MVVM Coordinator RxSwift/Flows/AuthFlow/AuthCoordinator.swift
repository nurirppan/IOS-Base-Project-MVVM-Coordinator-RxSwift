//
//  AuthCoordinator.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation

final class AuthCoordinator: BaseCoordinator, AuthCoordinatorOutput {
    
    var finishFLow: (() -> Void)?
    
    private let factory: ModuleFactory
    private let router: Router
    private weak var signUpView: SignUpView?
    
    
    init(router: Router, factory: ModuleFactory) {
        self.factory = factory
        self.router = router
    }
    
    override func start() {
        self.showLoogin()
    }
    
    private func showLoogin() {
        let view = factory.makeLoginOutput()
        router.setRootModule(view)
    }
    
    
}
