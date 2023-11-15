//
//  ApiClient.swift
//  Singleton
//
//  Created by Bhoomika Desai on 2023-11-15.
//

import UIKit

//singleton class - ensure must init single isntance and has only one access point
class ApiClient {
    private static let instance = ApiClient()
    
    static func getInstance() -> ApiClient{
        return instance
    }
    private init() {}
}

let client = ApiClient.getInstance()

