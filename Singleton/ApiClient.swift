//
//  ApiClient.swift
//  Singleton
//
//  Created by Bhoomika Desai on 2023-11-15.
//

import UIKit

struct LoggedInUser {}

//singleton class - ensure must init single isntance and has only one access point
class ApiClient {
    static let instance = ApiClient()
    private init() {}
    
    func login(completion: (LoggedInUser) -> Void) {}
}
//final can't be subclass, so to add more behavior in swift use extension
/*extension ApiClient{
    
}*/
//singleton - with lower 's' convience constuctor - only get
/*URLSession.shared*/

//unit test
class MockApiClient: ApiClient{
    
}

let client = ApiClient.instance

class LoginViewController: UIViewController {
    //properties injection
    var api = ApiClient.instance
    
    func didTapLoginButton() {
        api.login() { user in
            // show next screen
        }
    }
}
