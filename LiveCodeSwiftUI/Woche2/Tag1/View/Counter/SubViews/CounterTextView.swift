//
//  CounterTextView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 06.01.25.
//

import SwiftUI

struct CounterTextView: View {

    // Hier wird der Wert von counter nur angezeigt und nicht verändert -> wir brauchen kein Binding
    let counter: Int

    var body: some View {
        Text("\(counter)")
    }
}

#Preview {
    CounterTextView(counter: 0)
}
