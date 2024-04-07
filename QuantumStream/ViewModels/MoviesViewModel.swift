//
//  MoviesViewModel.swift
//  QuantumStream
//
//  Created by Yashwanth Reddy V on 2/23/24.
//

import Foundation

final class MoviesViewModel: ObservableObject {
    private let service = APIService()
    
    @Published var data: [MovieModel] = []
    
    public func fetchMovies(){
        service.getMovies{result in
            switch result{
            case .success(let models):
                self.data = models
            case .failure:
                break
            }
        }
    }
    
}
