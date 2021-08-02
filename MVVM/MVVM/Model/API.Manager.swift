//
//  API.Manager.swift
//  MVVM
//
//  Created by Apple on 01/08/2021.
//

import Foundation
struct APIManager {
    //MARK: Config
    struct Path {
        static let base_domain = "https://rss.itunes.apple.com"
        static let base_path = "/api/v1/vn"
        
        static let music_path = "/apple-music"
        static let music_hot = "/hot-tracks"
    }
    
    //MARK: - Domain
    struct Music {}
    
    struct Downloader {}
}
/*https://rss.itunes.apple.com/api/v1/vn/apple-music/hot-tracks/all/10/explicit.json */
