//
//  APIService.swift
//  Podcast-SwiftUI
//
//  Created by Abdul Basit on 21/06/2025.
//

import Alamofire

class APIService {
    // singleton
    static let shared = APIService()
    
    func fetchPodcasts(searchText: String, completionHandler: @escaping([Podcast]) -> ()) {
        let url = "https://itunes.apple.com/search"
        let parameters = ["term": searchText, "media": "podcast"]
        AF.request(url, parameters: parameters, encoding: URLEncoding.default).responseData { response in
            if let error = response.error {
                print("Failed to get podcasts:", error)
                return
            }
            guard let data = response.data else { return }
            print(String(data: data, encoding: .utf8) ?? "")
            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                completionHandler(searchResult.results)
            }catch let decodeError {
                print("Failed to decode:", decodeError)
            }
        }
    }
}
