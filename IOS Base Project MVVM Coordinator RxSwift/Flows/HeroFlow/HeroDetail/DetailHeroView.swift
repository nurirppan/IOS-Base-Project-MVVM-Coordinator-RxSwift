//
//  DetailHeroView.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation

protocol HeroDetailView: BaseView {
    var id: Int? { get set }
    var model: [HeroStatusResponse] { get set }
    var viewModel: HeroDetailVM! { get set }
    
}
