//
//  APIService.swift
//  QuantumStream
//
//  Created by Yashwanth Reddy V on 2/23/24.
//

import Foundation


final class APIService{
    
    init(){}
    struct Constants{
        static let apiURL = URL(string: "https://api.redsols.us/movies/1")
    }
    
    
    public func getMovies(completion: @escaping (Result<[MovieModel], Error>) -> Void ){
        guard let url = Constants.apiURL else {
            return
        }

        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                let error = NSError(domain: "Redsols", code: 0, userInfo: [NSLocalizedDescriptionKey: "No data received"])
                completion(.failure(error))
                return
            }

            do {
                let response = try JSONDecoder().decode([MovieModel].self, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(error))
            }
        }

        task.resume()
    }
    
    
}
