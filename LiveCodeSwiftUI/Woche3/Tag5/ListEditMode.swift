//
//  ListEditMode.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 17.01.25.
//

import SwiftUI

struct ListEditMode: View {

    @State private var names = [
        "Max", "Sophie", "Paul", "Mia", "Ben", "Hannah", "Luca", "Emma"
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(names, id: \.self) { name in
                    Text(name)

                }
                .onDelete { offsets in
                    names.remove(atOffsets: offsets)
                }
                // onMove funktionoiert in der Preview nicht richtig
                // Einfach im Simulator testen
                .onMove { offsets, newOffset in
                    names.move(fromOffsets: offsets, toOffset: newOffset)
                }
            }
            // Der EditButton startet den "Edit Mode" der Liste
            // Durch onDelete und onMove ist die Liste editierbar und der Edit Mode zeigt passende UI dafür an
            .toolbar {
                EditButton()
            }
            .onChange(of: names) {
                print(names)
            }
        }
    }
}

#Preview {
    ListEditMode()
}
