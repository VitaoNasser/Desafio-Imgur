//
//  APIClient.swift
//  DesafioHavan
//
//  Created by Rodrigo Dias on 12/09/21.
//

import Foundation
import Alamofire

class APIClient {
    
    static func getImages(query: String, completion: @escaping ((ImgurResponseModel?) -> Void)) {
        guard let token = UserDefaults.standard.string(forKey: "token") else {
            return
        }
        AF.request("https://api.imgur.com/3/gallery/search/?q=\(query)", headers: [
            "Authorization": "Bearer " + token
        ]).responseDecodable(of: ImgurResponseModel.self) { (response) in
            completion(response.value)
        }
        
    }
}
