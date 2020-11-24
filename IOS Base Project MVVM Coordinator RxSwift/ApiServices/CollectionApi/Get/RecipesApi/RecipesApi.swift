//
//  RecipesApi.swift
//  IOS Base Project MVVM Coordinator RxSwift
//
//  Created by Nur Irfan Pangestu on 24/11/20.
//

import Foundation
import RxSwift

class RecipesApi {
    
    let httpClient = HTTPClient.init().baseUrl
    let urlClient = "/posts"
    
    init() {}
    
    func getRecipes() throws -> Observable<[PostResponse]> {

        var request = URLRequest(url: URL(string:"\(httpClient)\(urlClient)")!)
        request.httpMethod = HTTPMethod.GET.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        return ApiServiceImp.shared.requestObservable.callAPI(request: request)
    }
    
}

