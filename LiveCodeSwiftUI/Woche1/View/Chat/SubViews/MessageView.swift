//
//  MessageView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 17.12.24.
//

import SwiftUI

struct MessageView: View {

    let message: ChatMessage

    var body: some View {
        HStack {
            Text(message.text)
            Spacer()
            Text("\(message.time) Uhr")
        }
        .padding()
    }
}

#Preview {
    MessageView(message: ChatMessage(text: "Mir gehts super, wie gehts dir?", time: "16:02"))
}
