//
//  ChatListItem.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.01.25.
//

import SwiftUI

struct ChatListItem: View {

    let chat: Chat

    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)

            Text(chat.contact.name)

            Spacer()

            Text(chat.messages.last?.text ?? "Noch keine Nachrichten")

        }
    }
}

#Preview {
    ChatListItem(chat: Chat(contact: Contact2(name: "Lisa", number: "01283325"), messages: []))
}
