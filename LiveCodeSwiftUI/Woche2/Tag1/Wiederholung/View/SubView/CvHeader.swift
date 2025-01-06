//
//  CvHeader.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 06.01.25.
//

import SwiftUI

struct CvHeader: View {

    let personalInfo = PersonalInfo(firstName: "Lisa", lastName: "Beispiel", adresse: "Burgweg 10, Berlin", age: 25)

    var body: some View {
        VStack {
            Image("profilePicture")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(.circle)
                .padding()

            VStack(alignment: .leading) {
                Text("Vorname: \(personalInfo.firstName)")
                Text("Nachname: \(personalInfo.lastName)")
                Text("Adresse: \(personalInfo.adresse)")

                HStack {
                    Spacer()
                }
            }
            .font(.title3)
            .frame(maxWidth: .infinity)

        }
        .padding()
        .background {
//            Image("hp_1")
//                .resizable()

            Color.blue
                .clipShape(.rect(cornerRadii: .init(bottomLeading: 20, bottomTrailing: 20)))
                .ignoresSafeArea()
        }
    }
}

#Preview {
    CvHeader()
}
