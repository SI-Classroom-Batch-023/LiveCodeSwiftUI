//
//  SheetSubView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 14.01.25.
//

import SwiftUI

struct SheetSubViewBonus: View {

    @State private var inputText = ""

    // Aus dem Environment der View, sozusagen der Kontext in dem die View gerade liegt, wird die dismiss Funktion geholt.
    // Wenn die View in einer modalen View (zB Sheet oder Alert) liegt, dann kann die modale View damit geschlossen werden
    @Environment(\.dismiss) private var dismissFunction

    // Callback Function die wir hier aufrufen können um ein neues Item (String) zur Einkaufsliste hinzuzufügen
    // Wir wissen hier nicht wie diese Funktion implementert ist, wir erwarten einfach dass dort die Funktion übergeben wird sie auch sinnvoll definiert wird
    let addItem: (String) -> Void

    var body: some View {
        HStack {
            TextField("Was willst du einkaufen?", text: $inputText)
            Button("Hinzufügen") {
                // Zur Liste hinzufügen per callback function
                addItem(inputText)
                // Input Feld leeren
                inputText = ""
                // Sheet schließen
                dismissFunction()
            }
        }
        .padding()
    }
}

#Preview {
    SheetSubViewBonus(addItem: {item in })
}
