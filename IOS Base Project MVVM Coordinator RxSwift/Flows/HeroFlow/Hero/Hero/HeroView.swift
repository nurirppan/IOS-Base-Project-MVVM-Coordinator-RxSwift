//
//  HeroView.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation

protocol HeroView: BaseView {
    var viewModel: HeroVM! { get set }
    var onHeroDetailTapped: ((Int, [HeroStatusResponse]) -> Void)? { get set }
    
}

