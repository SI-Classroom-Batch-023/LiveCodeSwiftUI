//
//  StartView2.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.01.25.
//

import SwiftUI

enum NavDestination {
    case destination2
}

struct StartView2: View {

    @State private var navPath = NavigationPath()

    var body: some View {


        NavigationStack(path: $navPath) {

            VStack {
                // Der Navigation Link der die Destination direkt angibt (also keine value benutzt) hängt auch nichts an den Pfad an!
                // Es gibt ja auch gar keine value die angehängt werden könnte
                NavigationLink {
                    // Destination
                    Destination1()
                } label: {
                    Text("Navigiere ohne Pfad (Destination 1)")
                        .font(.title)
                }

                // Der NavigationLink mit der value hängt die value an den Pfad an.
                // Die richtige Destination wird dann vom NavigationStack über die festgelegten .navigationDestinations rausgesucht
                NavigationLink(value: NavDestination.destination2) {
                    Text("Navigiere mit Pfad (Destination 2)")
                        .font(.title)
                }
                .tint(.green)




            }
            // Die .navigationDestination ordner einer value eine Destination zu.
            // Also für welches Objekt wir zu welcher View hin navigieren wollen
            // Dabei ist es egal ob ein NavigationLink mit value diese value an den Pfad anhängt oder wir das selber über navPath.append() machen
            // In beiden Fällen wird eine value an den Pfad angehangen und der NavigationStack sucht die richtige Destination heraus
            .navigationDestination(for: NavDestination.self) { navDestination in
                switch navDestination {
                case .destination2:
                    Destination2()
                }
            }

        }
        .onChange(of: navPath) {
            print(navPath.count)
        }
    }
}

#Preview {
    StartView2()
}
