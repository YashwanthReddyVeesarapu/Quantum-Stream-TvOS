//
//  MovieCardView.swift
//  QuantumStream
//
//  Created by Yashwanth Reddy V on 2/23/24.
//

import SwiftUI
struct MovieCardView: View {
    let model: MovieModel
    var body: some View {
        HStack{
            AsyncImage(url:URL(string: model.thumbnail))
                .frame(width: 500, height: 800)
                .aspectRatio(contentMode: .fill)
                .clipped()
            
            VStack{
                Text(model.name).font(.title3).bold().lineLimit(1)
                Text(model.description).font(.body).lineLimit(3).foregroundColor(Color(.secondaryLabel))
            }
           
        }
    }
}
