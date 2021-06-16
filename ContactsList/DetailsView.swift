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
        VStack(spacing: 20) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 160, height: 160)
            Form {
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.blue)
                        .frame(width: 30, height: 30, alignment: .leading)
                    Text("\(person.phoneNumber)")
                }
                HStack {
                    Image(systemName: "mail")
                        .foregroundColor(.blue)
                        .frame(width: 30, height: 30, alignment: .leading)
                    Text("\(person.email)")
                }
            }
        }
        .padding()
        .navigationBarTitle("\(person.fullName)")
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person.init(firstName: "", surname: "", email: "@mail", phoneNumber: "123"))
    }
}
