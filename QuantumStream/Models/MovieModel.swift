//
//  MovieModel.swift
//  QuantumStream
//
//  Created by Yashwanth Reddy V on 2/23/24.
//

import Foundation


struct MovieModel: Codable, Hashable, Identifiable{
    let _id: String
    let name: String
    let year: String
    let language: String
    let thumbnail: String
    let video: String
    let description: String
    let genre: String
    let rating: String
    let duration: String
    
    var id: String {
          return _id
      }
}


