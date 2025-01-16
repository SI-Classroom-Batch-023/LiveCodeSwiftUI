//
//  ContactView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 13.01.25.
//

import SwiftUI

struct ContactListItem: View {

    var contact: Contact2

    var body: some View {
        HStack {

            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)

            Text(contact.name)

            Spacer()

            Text(contact.number)

            
        }
    }
}

#Preview {
    ContactListItem(contact: Contact2(name: "Lisa", number: "38746082"))
}
