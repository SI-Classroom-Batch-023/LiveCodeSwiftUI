//
//  ContentView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.12.24.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack {

            HStack {
                Text("Herzlich Willkommen Batch 23 :)")
                    .padding(.bottom, 48)
                    .padding(.horizontal, 16)
                Spacer()
            }

            Spacer()

            MessageView(message: ChatMessage(text: "Hallo wie gehts?", time: "16:00"))
            MessageView(message: ChatMessage(text: "Super und dir?", time: "16:02"))

        }
        .padding()
    }
}

#Preview {
    ChatView()
}
