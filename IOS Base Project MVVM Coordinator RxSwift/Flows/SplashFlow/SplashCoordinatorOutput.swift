//
//  SplashCoordinatorOutput.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation

protocol SplashCoordinatorOutput: class {
    
    var finishFLow: (() -> Void)? { get set }

}
