//
//  Untitled.swift
//  Podcast-SwiftUI
//
//  Created by Abdul Basit on 14/06/2025.
//

import SwiftUI

struct SearchView: View {
    // MARK: Properties
    @State private var searchText = ""
    @State private var podcasts = [Podcast]()
    
    //MARK: - Methods
    func performSearch(with query: String) {
        APIService.shared.fetchPodcasts(searchText: searchText) { podcasts in
            self.podcasts = podcasts
        }
    }
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List(podcasts, id: \.self.trackId) { podcast in
                PodcastItem(podcast: podcast)
            } //List
            .listStyle(.plain)
            .navigationTitle("Search")
            .searchable(text: $searchText)
            .onChange(of: searchText) { oldValue, newValue in
                performSearch(with: newValue)
            }
        }  // NavigationView
    }
}

#Preview {
    SearchView()
}
