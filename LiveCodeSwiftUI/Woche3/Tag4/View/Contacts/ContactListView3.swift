//
//  ContactListView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.01.25.
//

import SwiftUI

struct ContactListView3: View {
    
    var contactList: [Contact2] 

    var body: some View {
        // Hier auf keinen Fall noch einen NavigationStack, weil keine NavigationsStacks innerhalb von NavigationStacks liegen sollen.
        List(contactList) { contact in
            // NavigationLink hängt das Objekt (einen Contact2) an den navPath an
            // Der NavigationStack sucht aus allen festgelegten navigationDestinations die richtige View für dieses Objekt heraus und zeigt sie an
            NavigationLink(value: contact) {
                ContactListItem(contact: contact)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ContactListView3(contactList: [
            Contact2(name: "Lisa", number: "027489326478"),
            Contact2(name: "Bert", number: "027489326478"),
            Contact2(name: "Jeffrey", number: "027489326478")
        ])
    }
}
