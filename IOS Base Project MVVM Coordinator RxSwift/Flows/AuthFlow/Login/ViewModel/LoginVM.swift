//
//  LoginVM.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation
import RxSwift
import RxCocoa

class LoginVM {
    
    private let loginFlagRelay = BehaviorRelay<Void>(value: ())
    
    private let dispose = DisposeBag()
    
    init() { }
    
    struct Input {
        let username: Observable<String>
        let password: Observable<String>
//        let loginTapped: Observable<Void>
    }
    
    struct Output {
        var isSignInEnable: Driver<Bool>
//        var loginCompleted: Driver<Bool>
    }
    
    func transform(_ input: Input) -> Output {
        let isLoginEnabled = self.makeValidationLogin(input)
        return Output(
            isSignInEnable: isLoginEnabled
//            loginCompleted: self.loginFlagRelay.asDriver().skip(1)
        )
    }// tony hadisiswanto
    
    private func makeValidationLogin(_ input: Input) -> Driver<Bool> {
        let result = BehaviorRelay<Bool>(value: true)
        
        Observable
            .combineLatest(input.username, input.password)
            .map { (username, password) -> Bool in
                if !username.isEmpty && !password.isEmpty {
                    self.loginFlagRelay.accept(())
                    return true
                }
                return false
            }.subscribe(onNext: { (value) in
                result.accept(value)
            }).disposed(by: self.dispose)
        
        return result.asDriver()
    }
    
}
