//
//  UserView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 07.01.25.
//

import SwiftUI

struct UserView: View {

    // Die SubView ist extra allgemein angelegt, damit wir sie für User und IdentifiableUser verwenden können
    let name: String
    let image: String

    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(.circle)

            Text(name)

            Spacer()

        }
        .padding()
    }
}

#Preview {
    UserView(name: "Greta", image: "profilePicture")
}
