//
//  HeroesApi.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation
import RxSwift

class HeroesApi {
    
    let httpClient = HTTPClient.init().baseUrlDota
    let urlClient = "/heroes"
    
    init() { }
    
    func getHereos() throws -> Observable<[HeroesResponse]> {
        var request = URLRequest(url: URL(string:"\(httpClient)\(urlClient)")!)
        request.httpMethod = HTTPMethod.GET.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        return ApiServiceImp.shared.requestObservable.callAPI(request: request)
    }
}
