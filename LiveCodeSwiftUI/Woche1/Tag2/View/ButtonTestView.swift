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

            Button("Beispiel Test") {
                // Action:
                print("Beispiel Test wurde gedrückt")
            }

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
                Label("Add to cart", systemImage: "cart")
                    .font(.title)
            }


        }
    }
}

#Preview {
    ButtonTestView()
}
