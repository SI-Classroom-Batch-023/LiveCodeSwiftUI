//
//  CounterButtonsView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 06.01.25.
//

import SwiftUI

struct CounterButtonsView: View {

    // Wir brauchen Binding in der SubView, wenn wir einen State in der SubView verändern wollen
    // counter soll hier durch die Buttons verändert werden
    @Binding var counter: Int

    var body: some View {
//        Text("\(counter)")
        HStack {
            Button("+"){
                counter += 1
            }
            Button("-"){
                counter -= 1
            }
        }
    }
}

#Preview {
    CounterButtonsView(counter: .constant(0)) // Ist tatsächlich Konstant und ändert sich in dieser Preview nicht! Wenn die View aber tatsächlich in einer anderen View verwendet wird dann klappt alles wie erwartet
}
