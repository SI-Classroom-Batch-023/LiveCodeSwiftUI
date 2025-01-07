//
//  ForEachRange.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 07.01.25.
//

import SwiftUI

struct ForEachRange: View {
    var body: some View {
        VStack {
            HStack {
                ForEach(1..<11) { number in
                    Text(number.description)
                }
            }

            // ClosedRange ist in Swift nicht Identifiable, wir müssen extra eine Id angeben
            HStack {
                ForEach(1...10, id: \.self) { number in
                    Text(number.description)
                }
            }

            ForEach(1..<5) { number in
                HStack {
                    Rectangle()
                        .fill(Color(red: 0, green: 0, blue: 1.0/Double(number)))
                    Rectangle()
                        .fill(Color(red: 0, green: 0, blue: 1.0/Double(number)))
                    Rectangle()
                        .fill(Color(red: 0, green: 0, blue: 1.0/Double(number)))
                    Rectangle()
                        .fill(Color(red: 0, green: 0, blue: 1.0/Double(number)))
                }
                .aspectRatio(contentMode: .fit)
            }
        }
    }
}

#Preview {
    ForEachRange()
}
