//
//  ApiClient.swift
//  Singleton
//
//  Created by Bhoomika Desai on 2023-11-15.
//

import UIKit

//Main Module

extension ApiClient{
    func login(completion: (LoggedInUser) -> Void) {}
}

extension ApiClient{
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

//singleton class - ensure must init single isntance and has only one access point
//API Module
class ApiClient {
    static let shared = ApiClient()
    private init() {}
    func execute(_: URLRequest, completion:(Data) -> Void) {}
}


//Login Module
struct LoggedInUser {}


class LoginViewController: UIViewController {
    
    var login: (((LoggedInUser) -> Void)-> Void)?
    
    func didTapLoginButton() {
        //inject closure
        login? { user in
            // show next screen
        }
    }
}

//Feed Module
struct FeedItem {}

class FeedViewController: UIViewController{
    var loadFeed: ((([FeedItem]) -> Void)-> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFeed? { loadedItems in
            // update UI
            
        }
    }
}

