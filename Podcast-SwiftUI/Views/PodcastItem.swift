//
//  PodcastItem.swift
//  Podcast-SwiftUI
//
//  Created by Abdul Basit on 21/06/2025.
//

import SwiftUI

struct PodcastItem: View {
    
    let podcast: Podcast
    
    var body: some View {
        HStack {
            Image("appicon")
            VStack(alignment: .leading) {
                Text(podcast.trackName ?? "")
                Text(podcast.artistName ?? "")
            } // VStack
            
        } //HStack
    }
}

#Preview {
    PodcastItem(podcast: Podcast(trackId: 1, trackName: "Let's build that app!", artistName: "Brian Voong"))
}
