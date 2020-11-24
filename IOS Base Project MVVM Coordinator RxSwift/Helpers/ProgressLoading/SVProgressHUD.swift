//
//  SVProgressHUD.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation
import RxCocoa
import SVProgressHUD

enum Loading {
    
    static func defaultShow() {
        DispatchQueue.main.async {
            SVProgressHUD.show()
            SVProgressHUD.setDefaultMaskType(.black)
        }
    }
    
    static func dismiss() {
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
        }
    }
    
}
