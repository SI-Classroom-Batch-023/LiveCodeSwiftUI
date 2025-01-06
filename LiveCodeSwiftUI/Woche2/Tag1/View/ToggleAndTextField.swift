//
//  ToggleAndTextField.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 06.01.25.
//

import SwiftUI

struct ToggleAndTextField: View {

    @State private var showRectangle: Bool = false

    @State private var inputText: String = ""
    @State private var name: String = ""

    // MARK: if else - ternary operator
    var body: some View {

        VStack {

            // MARK: Toggle
            Button("Toggle Shape") {
                showRectangle.toggle()
            }

            Toggle("Toggle Shape", isOn: $showRectangle)

            if (showRectangle) {
                Rectangle()
                    .fill(.orange)
                    .frame(width: 100, height: 100)
            } else {
                Circle()
                    .frame(width: 100, height: 100)
            }

            Text("Der Wert von showRectangle ist: \(showRectangle)")

            Text("Dies ist ein: \(showRectangle ? "Rechteckt" : "Kreis")")


            Spacer()

            // MARK: TextField

            HStack {
                // Das TextField bekommt ein Binding zu dem State inputText und aktualisiert den Wert von inputText bei jedem Tippen des Users
                TextField("Gib deinen Namen ein", text: $inputText)

                // Wenn schon etwas eingetippt wurde wird ein grünes Häkchen angezeigt, ansonsten ein rotes X angezeigt
                Image(systemName: inputText.isEmpty ? "xmark" : "checkmark")
                    .foregroundStyle(inputText.isEmpty ? .red : .green)

                Button("Submit") {
                    // Beim Drücken auf "Submit" wird der Wert vom State inputText in den State name kopiert
                    if (!inputText.isEmpty) {
                        name = inputText
                    }
                }

            }

            if (!name.isEmpty) {
                Text("Hallo \(name)")
            }


        }
        .padding()

    }

}

#Preview {
    ToggleAndTextField()
}
