//
//  Person.swift
//  ContactsList
//
//  Created by Анна Голубева on 16.06.2021.
//

import SwiftUI

struct Person: Hashable {
//    let id = UUID()
    let firstName: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phoneNumbers.shuffled()
        
        let iterationCount = min(names.count,
                                 surnames.count,
                                 emails.count,
                                 phones.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
