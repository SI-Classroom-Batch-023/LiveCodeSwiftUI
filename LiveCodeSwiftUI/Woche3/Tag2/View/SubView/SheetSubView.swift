//
//  SheetSubView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 14.01.25.
//

import SwiftUI

struct SheetSubView: View {

    @State private var inputText = ""

    @Binding var shoppingList: [String]
    @Binding var showSheet: Bool

    var body: some View {
        HStack {
            TextField("Was willst du einkaufen?", text: $inputText)
            Button("Hinzufügen") {
                // Zur Liste hinzufügen
                shoppingList.append(inputText)
                // Input Feld leeren
                inputText = ""
                // Sheet schließen
                showSheet = false
            }
        }
        .padding()
    }
}

#Preview {
    SheetSubView(shoppingList: .constant([]), showSheet: .constant(true))
}
