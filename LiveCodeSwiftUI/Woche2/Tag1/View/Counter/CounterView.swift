//
//  CounterView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 06.01.25.
//

import SwiftUI

struct CounterView: View {

    @State var counter: Int = 0
//    var counter2 = 0

    var body: some View {
        VStack{

            Button("+ 1") {
                counter += 1
//                counter2 += 1 // geht nicht weil counter2 kein State ist!
            }

            // Die CounterTextView zeigt den Wert vom counter State nur an und verändert ihn nicht.
            // Deswegen kann der State hier auch ohne Binding weitergegeben werden
            CounterTextView(counter: counter)

            // Die CounterButtonsView soll den State verändern, deswegen brauchen wir hier auf jeden Fall das Binding ($counter)
            // Datenfluss in beide Richtungen
            CounterButtonsView(counter: $counter)

        }.font(.largeTitle)
    }

}

#Preview {
    CounterView()
}
