//
//  ApiClient.swift
//  Singleton
//
//  Created by Bhoomika Desai on 2023-11-15.
//

import UIKit

struct LoggedInUser {}

//singleton class - ensure must init single isntance and has only one access point
final class ApiClient {
    static let instance = ApiClient()
    private init() {}
    
    func login(completion: (LoggedInUser) -> Void) {}
}
//final can't be subclass, so to add more behavior in swift use extension
/*extension ApiClient{
    
}*/
//singleton - with lower 's' convience constuctor - only get
/*URLSession.shared*/

let client = ApiClient.instance

class LoginViewController: UIViewController {
    func didTapLoginButton() {
        ApiClient.instance.login() { user in
            // show next screen
        }
    }
}
