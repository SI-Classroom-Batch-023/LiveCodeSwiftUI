//
//  ChatDetailView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.01.25.
//

import SwiftUI

struct ChatDetailView: View {

    let chat: Chat

    var body: some View {

        VStack {
            // NavigationLink hängt das Objekt (einen Contact2) an den navPath an
            // Der NavigationStack sucht aus allen festgelegten navigationDestinations die richtige View für dieses Objekt heraus und zeigt sie an
            NavigationLink(value: chat.contact) {
                HStack {
                    Image(systemName: "person")
                        .font(.title)

                    Text(chat.contact.name)
                        .font(.title)

                    Spacer()
                }
            }

            ScrollView {
                ForEach(chat.messages) { message in
                    Text(message.text)
                        .padding()
                        .background(message.isReceived ? .blue : .green)
                        .clipShape(.capsule)
                        .frame(maxWidth: .infinity, alignment: message.isReceived ? .leading : .trailing)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ChatDetailView(chat: Chat(contact: Contact2(name: "Lisa", number: "08264871634"), messages: [
        Message(text: "Hallo", isReceived: true),
        Message(text: "Hey", isReceived: false),
    ]))
}
