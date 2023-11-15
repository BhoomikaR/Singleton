//
//  ApiClient.swift
//  Singleton
//
//  Created by Bhoomika Desai on 2023-11-15.
//

import UIKit

//singleton class - ensure must init single isntance and has only one access point
//API Module
class ApiClient {
    static let shared = ApiClient()
    private init() {}
    func execute(_: URLRequest, completion:(Data) -> Void) {}
}


//Login Module
struct LoggedInUser {}

extension ApiClient{
    func login(completion: (LoggedInUser) -> Void) {}
}
class LoginViewController: UIViewController {
    //properties injection & global state mutable state
    var api = ApiClient.shared
    
    func didTapLoginButton() {
        api.login() { user in
            // show next screen
        }
    }
}

//Feed Module
struct FeedItem {}

extension ApiClient{
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}
class FeedViewController: UIViewController{
    var api = ApiClient.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        api.loadFeed{ loadedItems in
            // update UI
            
        }
    }
}


//final can't be subclass, so to add more behavior in swift use extension
/*extension ApiClient{
    
}*/

//singleton - with lower 's' convience constuctor - only get
/*URLSession.shared*/
//unit test
//class MockApiClient: ApiClient{}
