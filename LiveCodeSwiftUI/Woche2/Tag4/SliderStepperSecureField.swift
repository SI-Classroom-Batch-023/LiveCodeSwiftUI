//
//  SliderStepperSecureField.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 09.01.25.
//

import SwiftUI

struct SliderStepperSecureField: View {

    @State private var sliderValue: Double = 0.0
    @State private var sliderValue2: Double = 0.0
    @State private var sliderValue3: Double = 0.0

    var sliderValue3AsInt: Int {
        Int(round(sliderValue3))
    }


    @State private var stepperValue: Int = 0

    @State private var password: String = ""

    @State private var isHidden: Bool = true

    var body: some View {
        VStack {
            // MARK: Slider
            Text("Slider")
                .font(.headline)
            Slider(value: $sliderValue, in: 0...5) {
                // Label wird in iOS nicht angezeigt
                Text("Slider von 0 bis 5")
            }

            // Selber ein Label hinzufügen
            // Bevorzugt mit LabeledContent statt HStack
//            HStack {
//                Text("Slider von 0 bis 5")
//                Slider(value: $sliderValue, in: 0...5)
//            }

            // LabeledContent macht die Semantik hier noch klarer:
            // Der Text ist ein Label für den Slider. Im Hstack sind es einfach zwei unabhängige Elemente
            LabeledContent {
                Slider(value: $sliderValue, in: 0...5)
            } label: {
//                Text("Slider von 0 bis 5")
                Image(systemName: "bell")
            }

            Text("slidervalue1: " + String(format: "%.3f", sliderValue))
                .font(.caption)


            // MARK: Synamischer Sliderwert

            Text("Dynamischer Sliderwert")
                .font(.headline)
                .padding(.top)
            Text("Max. Wert abhängig von Slider1: " + String(format: "%.3f", sliderValue))
                .font(.subheadline)
            Slider(value: $sliderValue2, in: 0...sliderValue)
            Text("slidervalue2: " + String(format: "%.3f", sliderValue2))
                .font(.caption)


            // MARK: Slider mit Step

            Text("Slider mit step")
                .font(.title3)
                .padding(.top)
            Slider(value: $sliderValue3, in: -5...5, step: 1)
            Text(String(format: "%.0f", sliderValue3))


            Divider()

            // MARK: Stepper

            Stepper("Stepper: \(stepperValue)", value: $stepperValue, in: 0...Int.max, step: 5)


            Divider()

            // MARK: SecureField

            SecureField("Passwort:", text: $password)
            SecureField("Passwort:", text: $password, prompt: Text("Verpflichtend"))
            Text(password)

            // BONUS: User kann auswählen ob versteckte Anzeige oder nicht
            HStack {
                if isHidden {
                    SecureField("Passwort:", text: $password)
                } else {
                    TextField("Passwort:", text: $password)
                }
                Toggle(isOn: $isHidden) {
                    Image(systemName: isHidden ? "eye.slash" : "eye")
                }
                .toggleStyle(.button)
//                Button {
//                    isHidden.toggle()
//                } label: {
//                    Image(systemName: isHidden ? "eye.slash" : "eye")
//                }
            }


        }
        .padding()
    }
}

#Preview {
    SliderStepperSecureField()
}
