//
//  Model.swift
//  BuggyApp
//
//  Created by Teerawat Vanasapdamrong on 28/6/19.
//  Copyright © 2019 scbeasy. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Country: Codable {
  let name: String
  let alpha2Code: String
  let capital: String
  let population: Int64
  let latlng: [Double]
  let currencies: [Currency]
  let languages: [Language]
  let flag: String
}

struct Currency: Codable {
  let code: String?
  let name: String?
  let symbol: String?
}

struct Language: Codable {
  let name: String
  let nativeName: String
}

struct Track {
  let artistId : Int
  let artistName: String
  let collectionName: String
  let trackName: String
  let artworkUrl: String
  let collectionPrice: Double
  let trackPrice: Double
  let releaseDate: String
  let trackTimeMillis: Int
  let country: String
  let currency: String
  let primaryGenreName: String

////  enum CodingKeys: String, CodingKey {
////    case artistId
////    case artistName
////    case collectionName
////    case trackName
////    case artworkUrl = "artworkUrl100"
////    case collectionPrice
////    case trackPrice
////    case releaseDate
////    case trackTimeMillis
////    case country
////    case currency
////    case primaryGenreName
////  }
//
//  init(from decoder: Decoder) throws {
//    let values = try decoder.container(keyedBy: CodingKeys.self)
//    artistId = try values.decode(Int.self, forKey: .artistId)
//    artistName = try values.decode(String.self, forKey: .artistName)
//    collectionName = try values.decode(String.self, forKey: .collectionName)
//    trackName = try values.decode(String.self, forKey: .trackName)
//    artworkUrl = try values.decode(String.self, forKey: .artworkUrl)
//    collectionPrice = try values.decode(Double.self, forKey: .collectionPrice)
//    trackPrice = try values.decode(Double.self, forKey: .trackPrice)
//    releaseDate = try values.decode(String.self, forKey: .releaseDate)
//    trackTimeMillis = try values.decode(Int.self, forKey: .trackTimeMillis)
//    country = try values.decode(String.self, forKey: .country)
//    currency = try values.decode(String.self, forKey: .currency)
//    primaryGenreName = try values.decode(String.self, forKey: .primaryGenreName)
//  }
}

//struct Track: Codable {
//  let wrapperType, kind: String
//  let artistID, collectionID, trackID: Int
//  let artistName, collectionName, trackName, collectionCensoredName: String
//  let trackCensoredName: String
//  let artistViewURL, collectionViewURL, trackViewURL: String
//  let previewURL: String
//  let artworkUrl30, artworkUrl60, artworkUrl100: String
//  let collectionPrice, trackPrice: Double
//  let releaseDate: String
//  let collectionExplicitness, trackExplicitness: String
//  let discCount, discNumber, trackCount, trackNumber: Int
//  let trackTimeMillis: Int
//  let country, currency, primaryGenreName: String
//  let isStreamable: Bool
//
//  enum CodingKeys: String, CodingKey {
//    case wrapperType, kind
//    case artistID = "artistId"
//    case collectionID = "collectionId"
//    case trackID = "trackId"
//    case artistName, collectionName, trackName, collectionCensoredName, trackCensoredName
//    case artistViewURL = "artistViewUrl"
//    case collectionViewURL = "collectionViewUrl"
//    case trackViewURL = "trackViewUrl"
//    case previewURL = "previewUrl"
//    case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice, releaseDate, collectionExplicitness, trackExplicitness, discCount, discNumber, trackCount, trackNumber, trackTimeMillis, country, currency, primaryGenreName, isStreamable
//  }
//}

extension Track {
  init(json: JSON) {
    artistId = json["artistId"].intValue
    artistName = json["artistName"].stringValue
    collectionName = json["collectionName"].stringValue
    trackName = json["trackName"].stringValue
    artworkUrl = json["artworkUrl100"].stringValue
    collectionPrice = json["collectionPrice"].doubleValue
    trackPrice = json["trackPrice"].doubleValue
    releaseDate = json["releaseDate"].stringValue
    trackTimeMillis = json["trackTimeMillis"].intValue
    country = json["country"].stringValue
    currency = json["currency"].stringValue
    primaryGenreName = json["primaryGenreName"].stringValue
  }
}
