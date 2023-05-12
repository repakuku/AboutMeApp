//
//  Person.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/11/23.
//

struct Person {
    let firstName: String
    let secondName: String
    let company: String
    let jobTitle: String
    let bio: String
    
    static func getPerson() -> Person {
        Person(
            firstName: "Алексей",
            secondName: "Турулин",
            company: "Academics, New York",
            jobTitle: "Преподаватель",
            bio: "Бла бла бла всякое обо мне"
        )
    }
}
