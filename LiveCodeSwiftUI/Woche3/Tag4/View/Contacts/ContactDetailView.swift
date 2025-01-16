//
//  ContactDetailView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.01.25.
//

import SwiftUI

struct ContactDetailView: View {

    @Binding var navPath: NavigationPath

    let contact: Contact2

    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 150)

            Text(contact.name)
                .font(.headline)
            Text(contact.number)
                .font(.headline)

            Spacer()
        }
        .padding()
        .toolbar {
            Button {
                // navigiere ganz zurück in die StartView
                // -> entferne so viele Elemente wie im Pfad liegen (also alle)
                navPath.removeLast(navPath.count)
            } label: {
                Image(systemName: "xmark")
            }
        }
    }
}

#Preview {
    NavigationStack {
        ContactDetailView(navPath: .constant(NavigationPath()), contact: Contact2(name: "Lisa", number: "012738967234"))
    }
}
