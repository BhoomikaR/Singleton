//
//  ApiClient.swift
//  Singleton
//
//  Created by Bhoomika Desai on 2023-11-15.
//

import UIKit

//singleton class - ensure must init single isntance and has only one access point
final class ApiClient {
    static let instance = ApiClient()
    private init() {}
}
//final can't be subclass , so to add more behavior in swift use extension
extension ApiClient{
    
}
let client = ApiClient.instance

