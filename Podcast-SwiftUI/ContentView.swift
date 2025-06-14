//
//  ContentView.swift
//  Podcast-SwiftUI
//
//  Created by Abdul Basit on 13/06/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorite", systemImage: "star")
                }
            DownloadsView()
                .tabItem {
                    Label("Downloads", systemImage: "square.and.arrow.down")
                }
        }.tint(.purple)
    }
}

#Preview {
    ContentView()
}
