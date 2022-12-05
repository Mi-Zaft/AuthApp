//
//  User.swift
//  AuthApp
//
//  Created by Максим Евграфов on 24.11.2022.
//

struct User {
    let userName: String
    let password: String
    let name: String
    let surname: String
    let age: Int
    let githubAccount: String
    let email: String
    let skills: [String]
    
    static let user = User(
        userName: "Root",
        password: "123456",
        name: "Maxim",
        surname: "Evgrafov",
        age: 26,
        githubAccount: "https://github.com/Mi-Zaft",
        email: "mi.zaft1@gmail.com",
        skills: [
            "Shooting",
            "Driving",
            "Programming"
        ]
    )
}

