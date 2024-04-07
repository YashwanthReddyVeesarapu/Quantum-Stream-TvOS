//
//  HomeView.swift
//  QuantumStream
//
//  Created by Yashwanth Reddy V on 2/23/24.
//

import SwiftUI
struct HomeView: View {
    @StateObject var viewModel = MoviesViewModel()
    var body: some View {
        NavigationView{
            VStack{
                if viewModel.data.isEmpty{
                    ProgressView().progressViewStyle(CircularProgressViewStyle())
                }
                
                List(viewModel.data){movie in
                    NavigationLink(destination: MovieDetailView(model: movie), label:{ MovieCardView(model: movie)} )
                }
                .navigationTitle("Quantum Stream")
            }
        }
        .onAppear{
            viewModel.fetchMovies()
        }
    }
}

#Preview {
    HomeView()
}
