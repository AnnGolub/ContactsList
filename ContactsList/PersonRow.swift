//
//  PersonRow.swift
//  ContactsList
//
//  Created by Анна Голубева on 16.06.2021.
//

import SwiftUI

struct PersonRow: View {
    let person: Person
    
    var body: some View {
        Text("\(person.fullName)")
            .frame(height: 50)
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person.init(firstName: "Stive", surname: "Jobs", email: "", phoneNumber: ""))
    }
}
