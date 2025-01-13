//
//  ContactView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 13.01.25.
//

import SwiftUI

struct ContactView: View {

    var contact: Contact

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
    ContactView(contact: Contact(name: "Lisa", number: "38746082"))
}
