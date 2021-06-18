//
//  ContentView.swift
//  ContactsList
//
//  Created by Анна Голубева on 16.06.2021.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            PersonsList(persons: persons)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Persons")
                }
                SectionsContactList(persons: persons)
            .tabItem {
                Image(systemName: "person.3.fill")
                Text("Contacts")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
