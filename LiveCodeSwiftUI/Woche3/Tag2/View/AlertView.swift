//
//  AlertView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 14.01.25.
//

import SwiftUI

struct AlertView: View {

    @State private var longText = ""

    @State private var showAlert = false

    var body: some View {
        VStack {
            TextField("Gib einen langen Text ein", text: $longText, axis: .vertical)
                .lineLimit(4, reservesSpace: true)
                .textFieldStyle(.roundedBorder)

            Button("Alles löschen") {
                showAlert = true
            }
            .alert("Löschen bestätigen", isPresented: $showAlert) {

                // Alle Button Klicks schließen den Alert

                Button("Abbrechen", role: .cancel) {}
                // wegen role cancel wird der Button fett geschrieben (design guidelines)

                // Nur Spielerei
                Button("Zufall") {
                    if Bool.random() {
                        // Text löschen
                        deleteText()
                    }
                }

                Button("Löschen", role: .destructive, action: deleteText)
                    // Text löschen
                // wegen role destructive wird der Button rot geschrieben (design guidelines)
            }
        }
        .padding()
    }

    func deleteText() {
        longText = ""
    }

}

#Preview {
    AlertView()
}
