//
//  FormTestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 14.01.25.
//

import SwiftUI

struct FormTestView: View {

    @State private var firstName: String = ""
    @State private var email: String = ""
    @State private var birthday: Date = Date()
    
    @State private var updateNotificationsOn: Bool = false

    var body: some View {
        VStack {
            Text("Einstellungen")
                .font(.title)

            Form {
                Section("Persönlichen") {
                    TextField("Vorname", text: $firstName)
                    TextField("Email", text: $email)
                    DatePicker("Geburstag", selection: $birthday, displayedComponents: .date)
                }

                Section("Benachrichtigungen") {
                    Toggle("Updates", isOn: $updateNotificationsOn)
                }
            }
        }
    }
}

#Preview {
    FormTestView()
}
