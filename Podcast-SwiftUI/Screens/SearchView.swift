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
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {

            }
            .navigationTitle("Search")
            .searchable(text: $searchText)
        }  // NavigationView
    }
}

#Preview {
    SearchView()
}
