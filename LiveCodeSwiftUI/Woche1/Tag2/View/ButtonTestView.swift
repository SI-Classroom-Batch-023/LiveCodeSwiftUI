//
//  ButtonTestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 18.12.24.
//

import SwiftUI

struct ButtonTestView: View {
    var body: some View {
        VStack {

            // Wir benutzen diese Schreibweise für Buttons die nur einen Text haben
            Button("Beispiel Test") {
                // Action:
                print("Beispiel Test wurde gedrückt")
            }

            // Wir benutzen diese Schreibweise für Buttons mit eigener Gestaltung
            Button {
                // Action
                print("Add to cart")
            } label: {
                Image(systemName: "cart")
                    .resizable()
                    .frame(width: 50, height: 50)
            }

            Button {
                // Action
                print("Add to cart")
            } label: {
                // Ein Label kombiniert Image und Text
                Label("Add to cart", systemImage: "cart")
                    .font(.title)
            }


        }
    }
}

#Preview {
    ButtonTestView()
}
