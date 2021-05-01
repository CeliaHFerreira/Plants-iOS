//
//  DetailPlantModel.swift
//  Plant-IOS
//
//  Created by Celia Herrera Ferreira on 26/04/2021.
//

import Foundation

class DetailPlant: Codable {
    let id: Int
    let commonName: String
    let slug: String
    let scientificName: String
    let mainSpeciesId: Int
    let imageUrl: String
    let year: Int
    let bibliography: String
    let author: String
    let familyCommonName: String
    let genusId: Int
    let observations: String
    let vegetable: Bool
    let mainSpecies: MainSpecies
    
    enum CodingKeys: String, CodingKey {
        case id
        case commonName = "common_name"
        case slug
        case scientificName = "scientific_name"
        case mainSpeciesId = "main_species_id"
        case imageUrl = "image_url"
        case year
        case bibliography
        case author
        case familyCommonName = "family_common_name"
        case genusId = "genus_id"
        case observations
        case vegetable
        case mainSpecies = "main_species"
    }
}

class MainSpecies: Codable{
    let id: Int
    let commonName: String
    let slug: String
    let scientificName: String
    let year: Int
    let bibliography: String
    let author: String
    let status: String
    let rank: String
    let familyCommonName: String
    let genusId: Int
    let observations: String
    let vegetable: Bool
    let imageUrl: String
    let genus: String
    let family: String
    let duration: [String]
    let ediblePart: [String]
    let edible: Bool
    
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
        case observations
        case vegetable
        case imageUrl = "image_url"
        case genus
        case family
        case duration
        case ediblePart = "edible_part"
        case edible
    }
}

