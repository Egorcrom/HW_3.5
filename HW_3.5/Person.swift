//
//  Person.swift
//  HW_3.5
//
//  Created by Егор Кромин on 03.02.2022.
//

import Foundation

struct Person: Identifiable {
    var id: Int
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let ids = DataManager.shared.ids.shuffled()
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                id: ids[index],
                name: names[index],
                surname: surnames[index],
                phoneNumber: phones[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
    
    static func getContact() -> Person {
        
        let ids = DataManager.shared.ids.shuffled()
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let person = Person(
            id: ids[0],
            name: names[0],
            surname: surnames[0],
            phoneNumber: phones[0],
            email: emails[0])
        
        return person
    }
    
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
