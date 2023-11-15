//
//  ApiClient.swift
//  Singleton
//
//  Created by Bhoomika Desai on 2023-11-15.
//

import UIKit

//singleton class - ensure must init single isntance and has only one access point
class ApiClient {
    static let instance = ApiClient()
    private init() {}
}

let client = ApiClient.instance

