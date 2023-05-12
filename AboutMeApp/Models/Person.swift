//
//  Person.swift
//  AboutMeApp
//
//  Created by Алексей Турулин on 5/11/23.
//

struct Person {
    let firstName: String
    let lastName: String
    let company: String
    let jobTitle: String
    let bio: String
    
    let image: String
    let firstHobbyImage: String
    let secondHobbyImage: String
    
    static func getPerson() -> Person {
        Person(
            firstName: "Алексей",
            lastName: "Турулин",
            company: "Advanced Academic Programs, NY",
            jobTitle: "Преподаватель",
            bio: """
            Алексей Турулин родился 19 июня 1988 года в городе Москва, Россия.
            В 2011 году окончил МГТУ им. Н.Э. Баумана.
            С 2008 по 2014 год работал на АО "Вымпел" инженером-технологом в цехе по производству автоматических катапультных устройств для ракет.
            С 2014 по 2022 год работал на АО "НЦВ Миль и Камов" инженером-конструктором в отделе главных редукторов и агрегатов хвостовой трансмиссии.
            С 2022 по настоящее время работает преподавателем робототехники в Advanced Academic Programs в Нью Йорке.
            
            Занимается игрой на электрогитаре и вместе с сыном увлекается радиоуправляемыми моделями.
            """,
            image: "Alexey Turulin",
            firstHobbyImage: "Guitar",
            secondHobbyImage: "RC Cars"
        )
    }
}
