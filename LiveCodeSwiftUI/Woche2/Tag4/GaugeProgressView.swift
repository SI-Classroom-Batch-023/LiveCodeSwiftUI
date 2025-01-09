//
//  GaugeProgressView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 09.01.25.
//

import SwiftUI

struct GaugeProgressView: View {

    @State private var gaugeValue: Double = 0.6


    @State private var isLoading: Bool = true

    @State private var progress: Double = 0.0

    var body: some View {
        VStack {
            Gauge(value: gaugeValue) {
                Text("Fortschritt")
            }

            Gauge(value: gaugeValue, in: 0...2) {
                // oben
                Text("Fortschritt")
            } currentValueLabel: {
                // unten
                Text(gaugeValue.description)
            } minimumValueLabel: {
                // leading (links)
                Text("0")
            } maximumValueLabel: {
                // trailing (rechts)
                Text("2")
            }


            Gauge(value: gaugeValue) {
                Image(systemName: "thermometer")
                    .font(.headline)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 25)
            }
            .gaugeStyle(.accessoryCircular)
            .tint(.orange)

            Grid {
                Text("Programmiersprachen")
                    .font(.title3)
                GridRow {
                    Text("Swift")
                    Gauge(value: 0.9) {}
                }
                GridRow {
                    Text("Kotlin")
                    Gauge(value: 0.2) {}
                }
            }
            .tint(.green)


            Divider()

            if isLoading {
                ProgressView()
                // BONUS:
                // Wir möchten 3 Sekunden warten und danach isLoading auf false setzen, damit die ProgressView verschwindet
                // .task Modifier führt einen Codeblock asynchron aus, wenn die View erscheint
                // Warten müssen wir immer asynchron ausführen, damit unsere UI währenddessen nicht einfriert und weiter responsive bleibt
                    .task {
                        // await ist ein Keyword das kennzeichnet, dass wir hier auf einen asynchronen task warten
                        try? await Task.sleep(for: .seconds(3))
                        // nach 3 Sekunden warten wird die nächste Zeile ausgeführt
                        isLoading = false
                    }
            } else {
                Text("Finished Loading")
            }

            ProgressView("Fortschritt", value: progress)
            // BONUS: jede halbe Sekunde soll der Fortschritt um 10 Prozentpunkte wachsen
                .task {
                    for _ in 1...10 {
                        try? await Task.sleep(for: .seconds(0.5))
                        progress += 0.1
                    }
                }






        }
        .padding()

    }
}

#Preview {
    GaugeProgressView()
}
