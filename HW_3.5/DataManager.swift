//
//  DataManager.swift
//  HW_3.5
//
//  Created by Егор Кромин on 03.02.2022.
//

class DataManager {
    
    static let shared = DataManager()
    
    let ids = [1, 2, 3, 4, 5, 6, 7, 8]
    
    let names = [
        "John", "Simon", "Will", "Ben",
        "Jack", "Tim", "Bob", "Ted"
    ]
    
    let surnames = [
        "Doe", "Smith", "Brown", "Carter",
        "West", "White", "Green", "Einstein"
    ]
    
    let emails = [
        "onlyforspam@gmail.com", "donttextme@gmail.com",
        "afkfortenyears@gmail.com", "trashinbox@gmail.com",
        "notforwork@gmail.com", "fakemail@gmail.com",
        "africanprince@gmail.com", "6c6f6c@gmail.com"
    ]
    
    let phones = [
        "945382945", "316294512", "806372945", "956284723",
        "824734562", "623451321","987654321", "123456789"
    ]
    
    private init() {}
    
}
