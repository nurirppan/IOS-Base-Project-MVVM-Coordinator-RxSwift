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
    private let viewModel: ViewModelFactoryImp
    
    
    init(router: Router, factory: ModuleFactory, viewModel: ViewModelFactoryImp) {
        self.factory = factory
        self.router = router
        self.viewModel = viewModel
    }
    
    override func start() {
        self.showLoogin()
    }
    
    private func showLoogin() {
        let view = factory.makeLoginOutput()
        view.viewModel = self.viewModel.makeLoginVM()
        router.setRootModule(view, hideBar: true)
    }
    
    
}
