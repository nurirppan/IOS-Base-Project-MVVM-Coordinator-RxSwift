//
//  LoginVC.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import UIKit
import RxCocoa
import RxSwift

class LoginVC: UIViewController, LoginView {
    
    var viewModel: LoginVM!
    
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    private let loginTapRelay = PublishRelay<Void>()
    
    private let dispose = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUIs()
        self.bindViewModel()
    }
    
    private func setUIs() {
        
    }
    
    private func bindViewModel() {
        
        let input = LoginVM.Input(
            username: self.tfUsername.rx.text.orEmpty.asObservable(),
            password: self.tfPassword.rx.text.orEmpty.asObservable()
//            loginTapped: self.loginTapRelay.asObservable()
        )
        
        let output = self.viewModel.transform(input)
        
        output.isSignInEnable.drive(self.btnLogin.rx.valid).disposed(by: self.dispose)
//        output.loginCompleted.drive(onNext: { (_) in
//            print("berhasil")
//        }).disposed(by: self.dispose)
        
//        self.tfUsername.rx.text.orEmpty
//            .bind(to: self.viewModel.username)
//            .disposed(by: self.dispose)
//
//        self.tfPassword.rx.text.orEmpty
//            .bind(to: self.viewModel.password)
//            .disposed(by: self.dispose)
//
//        self.btnLogin.rx.tap
//            .bind { self.viewModel.signinTapped() }
//            .disposed(by: self.dispose)
//
//        self.viewModel.isSignInActive
//            .bind(to: self.btnLogin.rx.isEnabled)
//            .disposed(by: self.self.dispose)
//
//        self.viewModel.didSignIn
//            .subscribe(onNext: { error in
//                print("Failed \(error)")
//            }).disposed(by: self.dispose)
        
        
    }
}

extension Reactive where Base: UIButton {
    var valid: Binder<Bool> {
        return Binder(self.base) { view, model in
            if model {
                view.set(type: true)
            } else {
                view.set(type: false)
            }
        }
    }
}

extension UIButton {
    
    func set(type: Bool) {
        isEnabled = type
    }
}
