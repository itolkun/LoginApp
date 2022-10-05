//
//  PersonInfo.swift
//  LoginApp
//
//  Created by Айтолкун Анарбекова on 5/10/22.
//


struct user {
    let logIn: String
    let password: String
//    let person: person
    
    static func getUser() -> user {
        user(
            logIn: "User",
            password: "Password"
        )
    }
}

struct person {
    let name: String
    let surname: String
    let age: Int
    let country: String
    let city: String
    let prof: String
    
    static func getUserInfo() -> person {
        person(
            name: "Aitolkun",
            surname: "Anarbekova",
            age: 28,
            country: "Kyrgyzstan",
            city: "Bishkek",
            prof: "IOS - developer"
        )
    }
}
