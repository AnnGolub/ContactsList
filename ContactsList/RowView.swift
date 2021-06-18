//
//  RowView.swift
//  ContactsList
//
//  Created by Анна Голубева on 18.06.2021.
//

import SwiftUI

struct RowView: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(image: "phone", text: Person.getContactList().first!.phoneNumber)
    }
}
