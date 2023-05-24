//
//  CatModel.swift
//  CatApp
//
//  Created by Angel  Rangel  on 24/05/2023.
//

import Foundation


//struct CatBreed: Encodable, Identifiable {
//    let weight: Weight
//    let id: String
//    let name: String
//    let vetstreetUrl: String
//    let temperament: String
//    let origin: String
//    let countryCodes: String
//    let countryCode: String
//    let description: String
//    let lifeSpan: String
//    let indoor: Int
//    let altNames: String
//    let adaptability: Int
//    let affectionLevel: Int
//    let childFriendly: Int
//    let dogFriendly: Int
//    let energyLevel: Int
//    let grooming: Int
//    let healthIssues: Int
//    let intelligence: Int
//    let sheddingLevel: Int
//    let socialNeeds: Int
//    let strangerFriendly: Int
//    let vocalisation: Int
//    let experimental: Int
//    let hairless: Int
//    let natural: Int
//    let rare: Int
//    let rex: Int
//    let suppressedTail: Int
//    let shortLegs: Int
//    let wikipediaUrl: String
//    let hypoallergenic: Int
//    let referenceImageId: String
//
//    struct Weight: Codable {
//        let imperial: String
//        let metric: String
//    }
//
//    private enum CodingKeys: String, CodingKey {
//            case vetstreetUrl = "vetstreet_url"
//        case id = "vetstreet_url"
//        case name = "vetstreet_url"
//        case vetstreetUrl = "vetstreet_url"
//        case temperament = "vetstreet_url"
//        case origin = "vetstreet_url"
//        case countryCodes = "vetstreet_url"
//        case countryCode = "vetstreet_url"
//        case description: String
//        case lifeSpan: String
//        case indoor: Int
//        case altNames: String
//        case adaptability: Int
//        case affectionLevel: Int
//        case childFriendly: Int
//        case dogFriendly: Int
//        case energyLevel: Int
//        case grooming: Int
//        case healthIssues: Int
//        case intelligence: Int
//        case sheddingLevel: Int
//        case socialNeeds: Int
//        case strangerFriendly: Int
//        case vocalisation: Int
//        case experimental: Int
//        case hairless: Int
//        case natural: Int
//        case rare: Int
//        case rex: Int
//        case suppressedTail: Int
//        case shortLegs: Int
//        case wikipediaUrl: String
//        case hypoallergenic: Int
//        case referenceImageId: String
//            // Otros casos para el resto de las propiedades
//    }
//
//    static let defaultCatBreed = CatBreed(
//        weight: CatBreed.Weight(imperial: "7 - 10", metric: "3 - 5"),
//        id: "aege",
//        name: "Aegean",
//        vetstreetUrl: "http://www.vetstreet.com/cats/aegean-cat",
//        temperament: "Affectionate, Social, Intelligent, Playful, Active",
//        origin: "Greece",
//        countryCodes: "GR",
//        countryCode: "GR",
//        description: "Native to the Greek islands known as the Cyclades in the Aegean Sea, these are natural cats, meaning they developed without humans getting involved in their breeding. As a breed, Aegean Cats are rare, although they are numerous on their home islands. They are generally friendly toward people and can be excellent cats for families with children.",
//        lifeSpan: "9 - 12",
//        indoor: 0,
//        altNames: "",
//        adaptability: 5,
//        affectionLevel: 4,
//        childFriendly: 4,
//        dogFriendly: 4,
//        energyLevel: 3,
//        grooming: 3,
//        healthIssues: 1,
//        intelligence: 3,
//        sheddingLevel: 3,
//        socialNeeds: 4,
//        strangerFriendly: 4,
//        vocalisation: 3,
//        experimental: 0,
//        hairless: 0,
//        natural: 0,
//        rare: 0,
//        rex: 0,
//        suppressedTail: 0,
//        shortLegs: 0,
//        wikipediaUrl: "https://en.wikipedia.org/wiki/Aegean_cat",
//        hypoallergenic: 0,
//        referenceImageId: "ozEvzdVM-"
//    )
//
//}

//
// MARK: - CatModelElement
struct CatBreed: Codable, Identifiable {
    let weight: Weight
    let id, name: String
    let cfaURL: String?
    let vetstreetURL: String?
    let vcahospitalsURL: String?
    let temperament, origin, countryCodes, countryCode: String
    let description, lifeSpan: String
    let indoor: Int
    let lap: Int?
    let altNames: String?
    let adaptability, affectionLevel, childFriendly, dogFriendly: Int
    let energyLevel, grooming, healthIssues, intelligence: Int
    let sheddingLevel, socialNeeds, strangerFriendly, vocalisation: Int
    let experimental, hairless, natural, rare: Int
    let rex, suppressedTail, shortLegs: Int
    let wikipediaURL: String?
    let hypoallergenic: Int
    let referenceImageID: String?
    let catFriendly, bidability: Int?

    enum CodingKeys: String, CodingKey {
        case weight, id, name
        case cfaURL = "cfa_url"
        case vetstreetURL = "vetstreet_url"
        case vcahospitalsURL = "vcahospitals_url"
        case temperament, origin
        case countryCodes = "country_codes"
        case countryCode = "country_code"
        case description
        case lifeSpan = "life_span"
        case indoor, lap
        case altNames = "alt_names"
        case adaptability
        case affectionLevel = "affection_level"
        case childFriendly = "child_friendly"
        case dogFriendly = "dog_friendly"
        case energyLevel = "energy_level"
        case grooming
        case healthIssues = "health_issues"
        case intelligence
        case sheddingLevel = "shedding_level"
        case socialNeeds = "social_needs"
        case strangerFriendly = "stranger_friendly"
        case vocalisation, experimental, hairless, natural, rare, rex
        case suppressedTail = "suppressed_tail"
        case shortLegs = "short_legs"
        case wikipediaURL = "wikipedia_url"
        case hypoallergenic
        case referenceImageID = "reference_image_id"
        case catFriendly = "cat_friendly"
        case bidability
    }
    
    static let  defaultCatBreed = CatBreed(
        weight: Weight(imperial: "", metric: ""),
        id: "",
        name: "",
        cfaURL: nil,
        vetstreetURL: nil,
        vcahospitalsURL: nil,
        temperament: "",
        origin: "",
        countryCodes: "",
        countryCode: "",
        description: "",
        lifeSpan: "",
        indoor: 0,
        lap: nil,
        altNames: nil,
        adaptability: 0,
        affectionLevel: 0,
        childFriendly: 0,
        dogFriendly: 0,
        energyLevel: 0,
        grooming: 0,
        healthIssues: 0,
        intelligence: 0,
        sheddingLevel: 0,
        socialNeeds: 0,
        strangerFriendly: 0,
        vocalisation: 0,
        experimental: 0,
        hairless: 0,
        natural: 0,
        rare: 0,
        rex: 0,
        suppressedTail: 0,
        shortLegs: 0,
        wikipediaURL: nil,
        hypoallergenic: 0,
        referenceImageID: nil,
        catFriendly: nil,
        bidability: nil
    )


}

// MARK: - Weight
struct Weight: Codable {
    let imperial, metric: String
}

//typealias CatModel = [CatModelElement]
