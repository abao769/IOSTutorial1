//
//  User.swift
//  TableView1
//
//  Created by Apple on 31/07/2021.
//

import Foundation
final class User {
    var name: String
    var age: Int
    var gender: Bool
    
    init(name: String, age: Int, gender: Bool) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    
    func getSubTitle() -> String {
        return "\(gender ? "Male" : "Female") - \(age) year olds"
    }
}
func getUser() -> [User] {
        //1
        var users = [User]()
        //2
        for i in 0...30 {
            //3
            let user = User(name: "Name \(i+1)", age: Int.random(in: 10...30), gender: Bool.random())
            //4
            users.append(user)
        }
        
        return users
    }
