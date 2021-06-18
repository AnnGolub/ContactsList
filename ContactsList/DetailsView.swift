//
//  DetailsView.swift
//  ContactsList
//
//  Created by Анна Голубева on 16.06.2021.
//

import SwiftUI

struct DetailsView: View {
    let person: Person
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            RowView(image: "phone", text: person.phoneNumber)
            RowView(image: "mail", text: person.email)
        }
        .navigationBarTitle(person.fullName)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person.getContactList().first!)
    }
}
