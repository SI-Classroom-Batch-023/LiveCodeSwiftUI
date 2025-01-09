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
            Slider(value: $sliderValue, in: 0...5) {
                // Label wird nicht angezeigt
//                Image("bell")
                Text("Slider von 0 bis 5")
            }
            Text(String(format: "%.3f", sliderValue))

            LabeledContent {
                Slider(value: $sliderValue, in: 0...5)
            } label: {
                Image(systemName: "bell")
//                Text("Slider von 0 bis 5")
            }

            HStack {
                Text("Slider von 0 bis 5")
                Slider(value: $sliderValue, in: 0...5)
            }

            // Experiment
            Slider(value: $sliderValue2, in: 0...sliderValue)
            Text(String(format: "%.3f", sliderValue2))


            Slider(value: $sliderValue3, in: -5...5, step: 1)
            Text(String(format: "%.0f", sliderValue3))

            Divider()

            Stepper("Stepper: \(stepperValue)", value: $stepperValue, in: 0...Int.max, step: 5)

            Divider()

            SecureField("Passwort:", text: $password)
            SecureField("Passwort:", text: $password, prompt: Text("Verpflichtend"))
            Text(password)

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
            }


        }
        .padding()
    }
}

#Preview {
    SliderStepperSecureField()
}
