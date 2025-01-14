//
//  SheetView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 14.01.25.
//

import SwiftUI

struct SheetTestView: View {

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
            SheetSubView(shoppingList: $shoppingList, showSheet: $showSheet)
            SheetSubViewBonus(addItem: addShoppingItem)
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium, .fraction(0.2)])
//                .interactiveDismissDisabled()
        }
    }

    func onDismiss() {
        print("sheet dismissed")
    }

    func addShoppingItem(newItem: String) {
        shoppingList.append(newItem)
    }
}

#Preview {
    SheetTestView()
}
