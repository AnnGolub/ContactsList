//
//  PersonsList.swift
//  ContactsList
//
//  Created by Анна Голубева on 16.06.2021.
//

import SwiftUI

struct PersonsList: View {
    let persons = Person.getContactList()
    
    var body: some View {
        NavigationView {
            List(persons) { persons in
                NavigationLink(destination: DetailsView(person: persons)) {
                    PersonRow(person: persons)
                }
            }
            .navigationBarTitle("Persons")
        }
    }
}


struct PersonsList_Previews: PreviewProvider {
    static var previews: some View {
        PersonsList()
    }
}
