//
//  ExperienceView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 06.01.25.
//

import SwiftUI

struct ExperienceView: View {

    let experience: Experience

    var body: some View {
        VStack (alignment: .leading) {
            Text(experience.name)
                .bold()

            HStack {
                Text("von \(experience.startDate) bis \(experience.endDate)")
            }
        }
        .padding()
    }
}

#Preview {
    ExperienceView(experience: Experience(name: "Syntax", startDate: "2024", endDate: "2025"))
}
