//
//  ContactListView2.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 13.01.25.
//

import SwiftUI

struct ContactListView2: View {

    @State private var contactListSim1: [Contact] = [
        Contact(name: "Lisa", number: "027489326478"),
        Contact(name: "Bert", number: "027489326478"),
        Contact(name: "Jeffrey", number: "027489326478")
    ]

    @State private var contactListSim2: [Contact] = [
        Contact(name: "Lisa", number: "027489326478"),
        Contact(name: "Bert", number: "027489326478"),
        Contact(name: "Jeffrey", number: "027489326478")
    ]

    @State private var sim2IsExpanded = true

    @State private var nameText = ""
    @State private var numberText = ""

    var body: some View {
        List {
            HStack {
                VStack {
                    TextField("Name", text: $nameText)
                    TextField("Nummer", text: $numberText)
                }
                Button {
                    // action
                    if (!nameText.isEmpty && !numberText.isEmpty) {
                        contactListSim1.append(Contact(name: nameText, number: numberText))
                        nameText = ""
                        numberText = ""
                    }
                } label: {
                    Image(systemName: "plus")
                }
                .disabled(nameText.isEmpty || numberText.isEmpty)
            }

            Section("SIM 1") {
                ForEach(contactListSim1) { contact in
                    ContactView(contact: contact)
                        .padding(.vertical)
                        .swipeActions {
                            Button {
                                // Action
                                print("call \(contact.name)")
                            } label: {
                                Label("Call", systemImage: "phone")
                            }
                            .tint(.green)
                            Button {
                                // Action
                                print("mail to \(contact.name)")
                            } label: {
                                Label("Mail", systemImage: "mail")
                            }
                            .tint(.blue)
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button(role: .destructive) {
                                // Action
                                contactListSim1.removeAll(where: { $0.id == contact.id })
                                print("delete \(contact.name)")
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                }
            }

            Section("SIM 2", isExpanded: $sim2IsExpanded) {
                ForEach(contactListSim2) { contact in
                    ContactView(contact: contact)
                        .padding(.vertical)
                }
                .onDelete { offsets in
                    contactListSim2.remove(atOffsets: offsets)
                }
            }
        }
        .listStyle(.sidebar)
    }
}

#Preview {
    ContactListView2()
}
