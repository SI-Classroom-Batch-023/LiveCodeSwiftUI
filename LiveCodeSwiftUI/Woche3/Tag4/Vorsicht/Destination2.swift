//
//  Destination2.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.01.25.
//

import SwiftUI

struct Destination2: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Destination 2")
                .font(.largeTitle)
                .foregroundStyle(.green)
                .padding()

            Image(systemName: "2.circle")
                .resizable()
                .padding()
                .frame(width: 100, height: 100)
                .background(.green)

            Text("Gültiger Pfad!")
                .foregroundStyle(.green)
                .font(.title)

            NavigationLink {
                // Destination
                Destination1()
            } label: {
                Text("Navigiere ohne Pfad (Destination 1)")
                    .font(.title3)
            }
            .tint(.orange)

            Spacer()

        }
    }
}

#Preview {
    Destination2()
}
