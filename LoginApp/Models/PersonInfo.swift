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
    let moreInfo: String
    
    static func getUserInfo() -> person {
        person(
            name: "Aitolkun",
            surname: "Anarbekova",
            age: 28,
            country: "Kyrgyzstan",
            city: "Bishkek",
            prof: "IOS - developer",
            moreInfo: """
    Short story from my life.
               
    A month ago I was in St. Petersburg and lived for 2 months.
    I thought to stay there for at least a year.
    But plans have changed and I am back in my homeland of Kyrgyzstan.
    """
        )
    }
}
