//
//  ImageModel.swift
//  DesafioHavan
//
//  Created by Rodrigo Dias on 13/09/21.
//

import Foundation

// MARK: - ImgurResponseModel
struct ImgurResponseModel: Codable {
    let data: [ImageModel]
    let success: Bool
    let status: Int
}

// MARK: - Datum
struct ImageModel: Codable {
    let images: [Image]?
    
    enum CodingKeys: String, CodingKey {
        case images
    }
    
    struct Image: Codable {
        let link: String

        enum CodingKeys: String, CodingKey {
            case link
        }
    }

}


