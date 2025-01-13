//
//  WiederholungView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 13.01.25.
//

import SwiftUI

struct WiederholungView: View {

    @State private var contactList: [Contact] = [
        Contact(name: "Lisa", number: "027489326478"),
        Contact(name: "Bert", number: "027489326478"),
        Contact(name: "Jeffrey", number: "027489326478")
    ]

    var body: some View {

        ForEach(contactList) { contact in
            ContactView(contact: contact)
                .padding()
        }

        ForEach($contactList) { $contact in
            ContactViewBinding(contact: $contact)
                .padding()
        }
    }
}

#Preview {
    WiederholungView()
}
