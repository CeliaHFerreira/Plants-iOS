//
//  ListPlantsModel.swift
//  Plants-iOS
//
//  Created by Celia Herrera Ferreira on 10/04/2021.
//

import Foundation

struct Plants: Codable {
    let data: [PlantsBody]
}

struct PlantsBody: Codable {
    let id: Int?
    let commonName: String?
    let slug: String?
    let scientificName: String?
    let year: Int?
    let bibliography: String?
    let author: String?
    let status: String?
    let rank: String?
    let familyCommonName: String?
    let genusId: Int?
    let imageUrl: String?
    let synonyms: [String?]
    let genus: String?
    let family: String?
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case commonName = "common_name"
        case slug
        case scientificName = "scientific_name"
        case year
        case bibliography
        case author
        case status
        case rank
        case familyCommonName = "family_common_name"
        case genusId = "genus_id"
        case imageUrl = "image_url"
        case synonyms
        case genus
        case family
    }
    
}
