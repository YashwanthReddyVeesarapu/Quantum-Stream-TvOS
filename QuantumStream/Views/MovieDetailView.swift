//
//  MovieDetailView.swift
//  QuantumStream
//
//  Created by Yashwanth Reddy V on 2/23/24.
//

import SwiftUI
import AVKit

struct MovieDetailView: View {
    let model: MovieModel
    @State private var isPlaying: Bool = false

    var body: some View {
        GeometryReader{ proxy in
            ScrollView(.vertical){
                //Picture
                AsyncImage(url:URL(string: model.thumbnail))
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.frame(in: .global).width, height: proxy.frame(in: .local).height / 2)
                    .clipped()
                NavigationLink("Play", destination: VideoPlayerView(video: URL(string: model.video)!).ignoresSafeArea(.all))
                Text(model.name).font(.title3).padding()
                Text("IMDb: \(model.rating)")
                Text("Duration: \(model.duration)")
                Text(model.description).padding()
            }
            .frame(maxWidth: proxy.frame(in: .global).width)
        }
        .navigationTitle(model.name)
        
    }

}


