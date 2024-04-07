//
//  VPView.swift
//  QuantumStream
//
//  Created by Yashwanth Reddy V on 3/7/24.
//

import SwiftUI
import AVKit

struct VPView: View {
    var video: URL?
    var body: some View {
        if let video{
            VideoPlayer(player: AVPlayer(url: video))
        }
    }
}

//#Preview {
//    VPView(video: <#T##URL#>)
//}
