//
//  SheetView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 14.01.25.
//

import SwiftUI

struct SheetUndAlertMitObjekt: View {

    // ACHTUNG ShoppingItem liegt im Ordner Tag3 > Navigation > Model
    @State private var shoppingList = [ShoppingItem(name: "Bananen"), ShoppingItem(name:"Kaffee")]

    @State private var showSheet = false

    // Für Alert mit Objekt (aus List)
    @State private var showDeleteAlert = false
    @State private var itemToBeDeleted: ShoppingItem? = nil

    // Für Sheet mit Objekt (aus List)
    @State private var selectedItem: ShoppingItem? = nil

    var body: some View {


        List(shoppingList) { element in
            Text(element.name)
                .swipeActions {
                    Button {
                        itemToBeDeleted = element
                        showDeleteAlert = true
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                    .tint(.red)
                }
                .onTapGesture {
                    selectedItem = element
                }
        }
        // Alert mit Objekt (aus List)
        .alert("Löschen bestätigen", isPresented: $showDeleteAlert, presenting: itemToBeDeleted) { item in
            Button("Abbrechen", role: .cancel) {}
            Button("Löschen", role: .destructive) {
                deleteItem(itemId: item.id)
            }
        } message: { item in
            Text("Soll \(item.name) wirklich gelöscht werden?")
        }
        // Sheet mit Objekt (aus List)
        .sheet(item: $selectedItem) { item in
            Text(item.name)
        }

        Button("Neuer Eintrag") {
            showSheet = true
        }
        .sheet(isPresented: $showSheet) {
            // ACHTUNG AddShoppingItemView liegt im Ordner Tag3 > Navigation > View
            AddShoppingItemView(shoppingList: $shoppingList, showSheet: $showSheet)
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium, .fraction(0.2)])
        }
    }

    private func deleteItem(itemId: UUID) {
        shoppingList.removeAll(where: {$0.id == itemId})
    }
}

#Preview {
    SheetUndAlertMitObjekt()
}
