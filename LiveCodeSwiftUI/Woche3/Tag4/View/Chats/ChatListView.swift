//
//  ChatListView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.01.25.
//

import SwiftUI

struct ChatListView: View {

    var chatList: [Chat]

    var body: some View {

        List(chatList) { chat in
            // NavigationLink hängt das Objekt (einen Chat) an den navPath an
            // Der NavigationStack sucht aus allen festgelegten navigationDestinations die richtige View für dieses Objekt heraus und zeigt sie an
            NavigationLink(value: chat) {
                ChatListItem(chat: chat)
            }
        }
    }
}






#Preview {
    NavigationStack {
        ChatListView(chatList: [
            Chat(contact: Contact2(name: "Lisa", number: "08264871634"), messages: [Message(text: "Hallo", isReceived: true)]),
            Chat(contact: Contact2(name: "Detlef", number: "01827483"), messages: [])
        ])
    }
}
