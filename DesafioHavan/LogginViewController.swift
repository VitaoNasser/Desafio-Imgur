//
//  LogginViewController.swift
//  DesafioHavan
//
//  Created by Rodrigo Dias on 12/09/21.
//

import UIKit
import OAuthSwift

class LogginViewController: UIViewController {
    
    let oauthswift = OAuth2Swift(consumerKey: ImgurOAuth.consumerKey.rawValue,
                                 consumerSecret: ImgurOAuth.consumerSecret.rawValue,
                                 authorizeUrl: ImgurOAuth.authorizeUrl.rawValue,
                                 accessTokenUrl: ImgurOAuth.accessTokenUrl.rawValue,
                                 responseType: ImgurOAuth.responseType.rawValue)
    
    @IBAction func authenticateToImgur(_ sender: UIButton) {

        let _ = oauthswift.authorize(withCallbackURL: nil, scope: "", state: "IMGUR") { result in
                switch result {
                case .success(let (credential, response, parameters)):
                    print(credential.oauthToken) //Do your request
                    self.performSegue(withIdentifier: "nextPage", sender: nil)
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
    
    enum ImgurOAuth: String {
        case consumerKey = "922ec13e48929bb"
        case consumerSecret = "873e3ff2858ae13e41eae4b5824ec3a2188b3b53"
        case authorizeUrl = "https://api.imgur.com/oauth2/authorize"
        case accessTokenUrl = "https://api.imgur.com/oauth2/token"
        case responseType = "token"
    }
}
