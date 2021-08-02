//
//  HomeViewModel.swift
//  MVVM
//
//  Created by Apple on 01/08/2021.
//

import Foundation

class HomeViewModel {
    var email: String = ""
    var password: String = ""
    var names: [String] = []
    var musics: [Music] = []
    typealias Completion = (Bool, String) -> Void
    
    func loadAPI(completion: @escaping Completion) {
        
        let urlString = "https://rss.itunes.apple.com/api/v1/vn/apple-music/hot-tracks/all/100/explicit.json"
        let url = URL(string: urlString)
        
        var request = URLRequest(url: url!)
        
        request.httpMethod = "GET"
        
        let config = URLSessionConfiguration.ephemeral
        config.waitsForConnectivity = true
        
        let session = URLSession(configuration: config)
        
        //connect
        let task = session.dataTask(with: request) { (data, response, error) in
            DispatchQueue.main.async {
                if let error = error {
                    //call back
                    completion(false, error.localizedDescription)
                } else {
                    if let data = data {
                        let json = data.toJSON()
                        let feed = json["feed"] as! JSON
                        let results = feed["results"] as! [JSON]
                        
                        for item in results {
                            let name = item["name"] as! String
                            self.names.append(name)
                        }
                        //call back
                        completion(true, "")
                    } else {
                       //call back
                       completion(false, "Data format is error.")
                    }
                }
            }
        }
        
        task.resume()
        print("Done")
        }
    
    func loadAPI2(completion: @escaping Completion) {
            let urlString = "https://rss.itunes.apple.com/api/v1/vn/apple-music/hot-tracks/all/100/explicit.json"
            
            Networking.shared().request(with: urlString) { (data, error) in
                if let error = error {
                    completion(false, error.localizedDescription)
                } else {
                    if let data = data {
                        let json = data.toJSON()
                        let feed = json["feed"] as! JSON
                        let results = feed["results"] as! [JSON]
                        
                        for item in results {
                            let music = Music(json: item)
                            self.musics.append(music)
                            
                            completion(true, "")
                        }
                    } else {
                        completion(false, "Data format is error.")
                    }
                }
            }
        }
    
    
    func fetchData(completion: (Bool, String, String) -> ()) {
        let data = DataManager.shared().read()
        let email = data.0
        let password = data.1
        
        if email != "" || password != "" {
            //lưu trữ dữ liệu
            self.email = email
            self.password = password
            
            //callback
            completion(true, email, password)
        } else {
            //callback
            completion(false, "", "")
        }
    }
}
