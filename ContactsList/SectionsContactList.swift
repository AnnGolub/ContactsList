//
//  SectionsContactList.swift
//  ContactsList
//
//  Created by Анна Голубева on 18.06.2021.
//

import SwiftUI

struct SectionsContactList: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text(person.fullName)) {
                        RowView(image: "phone",
                                text: person.phoneNumber)
                        RowView(image: "mail",
                                text: person.email)
                    }
                }
                .textCase(.none)
            }
            .navigationBarTitle("Contacts")
        }
    }
}

struct SectionsContactList_Previews: PreviewProvider {
    static var previews: some View {
        SectionsContactList(persons: Person.getContactList())
    }
}
