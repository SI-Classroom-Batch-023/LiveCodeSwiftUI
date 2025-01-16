//
//  StartView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.01.25.
//

import SwiftUI

struct StartView: View {
    @State private var navPath = NavigationPath()

    @State private var contactList: [Contact2] = [
        Contact2(name: "Lisa", number: "027489326478"),
        Contact2(name: "Bert", number: "027489326478"),
        Contact2(name: "Jeffrey", number: "027489326478")
    ]

    @State private var chatList = [
        Chat(contact: Contact2(name: "Lisa", number: "08264871634"), messages: [Message(text: "Hallo", isReceived: true)]),
        Chat(contact: Contact2(name: "Detlef", number: "01827483"), messages: [])
        ]

    var body: some View {
        NavigationStack(path: $navPath) {
            VStack {
                Button {
                    // Wir simulieren eine Benachrichtigung:
                    // Wenn wir die Benachrichtigung anklicken wollen wir über den Kontakt von Lisa zu dem Chat von Lisa navigieren
                    // Damit erreichen wir direkt eine Pfadlänge von 2
                    navPath.append(contactList[0])
                    navPath.append(chatList[0])
                } label: {
                    Text("Benachrichtugung: Neue Nachricht von Lisa")
                }


                TabView {
                    Tab("Contacts", systemImage: "person.circle") {
                        ContactListView3(contactList: contactList)
                    }
                    Tab("Chats", systemImage: "bubble") {
                        ChatListView(chatList: chatList)
                    }
                }

            }
            // Die .navigationDestination ordnen einem Objekt eine Destination zu
            // Wenn über navPath.append() oder über einen NavigationLink mit value navigiert wird, dann wird ein Objekt an den Pfad angehangen
            // Der NavigationSteck kann durch die .navigationDestinations für dieses Objekt die richtige Destination (also View) raussuchen und sie ganz oben auf dem Stapel anzeigen
            .navigationDestination(for: Contact2.self) { contact in
                ContactDetailView(navPath: $navPath, contact: contact)
            }
            .navigationDestination(for: Chat.self) { chat in
                ChatDetailView(chat: chat)
            }
        }
        .onChange(of: navPath) {
            print(navPath.count)
        }
    }
}

#Preview {
    StartView()
}
