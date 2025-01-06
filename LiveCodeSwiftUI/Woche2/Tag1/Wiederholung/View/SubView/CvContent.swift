//
//  CvContent.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 06.01.25.
//

import SwiftUI

struct CvContent: View {

    // Hier kommen alle Variablen & Konstanten hin
    let experienceList = [
        Experience(name: "App Developer", startDate: "2020.08", endDate: "2023.10"),
        Experience(name: "Web Developer", startDate: "2018.08", endDate: "2020.07"),
        Experience(name: "C++ Developer", startDate: "2015.08", endDate: "2018.08")
    ]

    var body: some View {
        // Hier kommen alle View Elemente hin

        ScrollView {
            VStack(alignment: .leading) {
                Text("Experiences:")
                    .font(.title)
                    .padding()
                ExperienceView(experience: experienceList[0])

                Divider()

                ExperienceView(experience: experienceList[1])

                Divider()

                ExperienceView(experience: experienceList[2])
            }
        }

    }
}

#Preview {
    CvContent()
}
