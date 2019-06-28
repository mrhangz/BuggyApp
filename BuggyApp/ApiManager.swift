//
//  ApiManager.swift
//  BuggyApp
//
//  Created by Teerawat Vanasapdamrong on 28/6/19.
//  Copyright © 2019 scbeasy. All rights reserved.
//

import Foundation
import Alamofire

protocol APIManagerProtocol {
  func getCountries(completion: @escaping (Swift.Result<[Country], Error>) -> Void)
}

class APIManager: APIManagerProtocol {
  let baseURL: String = "https://restcountries.eu/rest/v2"
  static let shared: APIManager = APIManager()
  
  func getCountries(completion: @escaping (Swift.Result<[Country], Error>) -> Void) {
    Alamofire.request("\(baseURL)/all")
      .validate()
      .responseJSON { response in
        switch response.result {
        case .success:
          do {
            let countries = try JSONDecoder().decode([Country].self, from: response.data!)
            completion(.success(countries))
          } catch (let error) {
            completion(.failure(error))
          }
        case .failure(let error):
          completion(.failure(error))
        }
    }
  }
}
