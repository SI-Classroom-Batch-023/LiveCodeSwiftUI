//
//  SheetView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 14.01.25.
//

import SwiftUI

struct SheetTestViewBonus: View {

    @State private var shoppingList = ["Bananen", "Kaffee"]

    @State private var showSheet = false

    var body: some View {


        List(shoppingList, id: \.self) { element in
            Text(element)
        }

        Button("Neuer Eintrag") {
            showSheet = true
        }
        .sheet(isPresented: $showSheet, onDismiss: onDismiss) {
            // Callback Function als Closure definieren und direkt an die SubView übergeben
//            SheetSubViewBonus { newItem in
//                shoppingList.append(newItem)
//            }
            // Callback Function als extra Funktion definieren und an die SubView übergeben
            SheetSubViewBonus(addItem: addShoppingItem)
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium, .fraction(0.2)])
//                .interactiveDismissDisabled()
        }
    }

    private func onDismiss() {
        print("sheet dismissed")
    }

    // Callback Function für die SubView
    private func addShoppingItem(newItem: String) {
        shoppingList.append(newItem)
    }
}

#Preview {
    SheetTestViewBonus()
}
