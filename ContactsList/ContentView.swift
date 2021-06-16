//
//  ContentView.swift
//  ContactsList
//
//  Created by Анна Голубева on 16.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PersonsList()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Persons")
                }
           
            NavigationView {
                SectionTableViewControllerRepresentable()
                    .navigationTitle("Contacts")
            }
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
