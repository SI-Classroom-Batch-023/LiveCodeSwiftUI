//
//  ForEachObjects.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 07.01.25.
//

import SwiftUI

struct ForEachObjects: View {


    let userList = [
        User(name: "Lisa", image: "hp_1"),
        User(name: "Hennes", image: "hp_3"),
        User(name: "Bert", image: "hp_2"),
        User(name: "Lisa", image: "profilePicture"),
    ]

    let identifiableUserList = [
        IdentifiableUser(name: "Lisa", image: "hp_1"),
        IdentifiableUser(name: "Hennes", image: "hp_3"),
        IdentifiableUser(name: "Bert", image: "hp_2"),
        IdentifiableUser(name: "Lisa", image: "profilePicture"),
    ]

    var body: some View {

        // Die User werden hier über die Namen identifiziert.
        // Der Name Lisa taucht zwei mal im Array auf und die Instanzen können nicht voneinander unterschieden werden
        // Die zweite Lisa wird mit einem falschen Profilbild angezeigt!
        ForEach(userList, id: \.name) { user in
            UserView(name: user.name, image: user.image)
        }

        Divider()

        // Über die id (Identifiable Protocol) können alle Objekte eindeutig identifiziert werden
        // Beide Lisas haben das jeweils richtige Profilbild
        ForEach(identifiableUserList) { user in
            UserView(name: user.name, image: user.image)
        }

    }
}

#Preview {
    ForEachObjects()
}
