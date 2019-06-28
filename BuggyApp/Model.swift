//
//  Model.swift
//  BuggyApp
//
//  Created by Teerawat Vanasapdamrong on 28/6/19.
//  Copyright © 2019 scbeasy. All rights reserved.
//

import Foundation

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
