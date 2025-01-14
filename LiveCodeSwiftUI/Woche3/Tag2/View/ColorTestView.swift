//
//  TestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 14.01.25.
//

import SwiftUI

struct ColorTestView: View {

    @State private var isOn: Bool = false
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.test)

        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.design)

        Button("Test Button") {}
            .tint(.test)

        Toggle("Test Toggle", isOn: $isOn)
            .tint(.design)

        Button("Test Button") {}
        // nimmt accentColor an
    }
}

#Preview {
    ColorTestView()
}
