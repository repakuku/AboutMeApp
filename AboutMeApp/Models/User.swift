//
//  User.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/11/23.
//

struct User {
    let username: String
    let password: String
    
    let person: Person
    
    static func getUser() -> User {
        User(username: "Alex", password: "12345", person: .getPerson())
    }
}
