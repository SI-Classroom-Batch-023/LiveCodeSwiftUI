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
                // links
                Text("0")
            } maximumValueLabel: {
                // rechts
                Text("2")
            }


            Gauge(value: gaugeValue) {
                Image(systemName: "thermometer")
//                    .font(.title)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
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
                    .task {
                        try? await Task.sleep(for: .seconds(3))
                        isLoading = false
                    }
            } else {
                Text("Finished Loading")
            }

            ProgressView("Fortschritt", value: progress)
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
