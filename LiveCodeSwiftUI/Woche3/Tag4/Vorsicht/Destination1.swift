//
//  Destination1.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.01.25.
//

import SwiftUI

struct Destination1: View {
    var body: some View {
        VStack(spacing: 16) {

            Text("Destination 1")
                .font(.largeTitle)
                .foregroundStyle(.orange)
                .padding()

            Image(systemName: "1.circle")
                .resizable()
                .padding()
                .frame(width: 100, height: 100)
                .background(.orange)
                .clipShape(.circle)

            Text("Kein gültiger Pfad!")
                .foregroundStyle(.orange)
                .font(.title)


            // Wir sind in die Destination1 View ohne eine value also ohne fültigen Pfad navigiert
            // Wenn wir jetzt versuchen von hier aus weiter zu navigieren über den Pfad (der ja ungültig ist) dann führt das zu ungewolltem Verhalten
            NavigationLink(value: NavDestination.destination2) {
                Text("Navigiere mit Pfad (Destination 2) - FEHLER!")
                    .font(.title3)
            }
            .tint(.green)

            Spacer()

        }
    }
}

#Preview {
    Destination1()
}
