//
//  SheetView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 14.01.25.
//

import SwiftUI

struct NavigationHomeView: View {

    @State private var shoppingList = [
        ShoppingItem(name: "Bananen"),
        ShoppingItem(name:"Kaffee")
    ]

    @State private var showSheet = false


    var body: some View {
        VStack(spacing: 0) {

            ShoppingAppHeader()

            NavigationStack {

                List(shoppingList) { element in
                    NavigationLink {
                        // Destination
                        ShoppingItemView(shoppingItem: element)
                    } label: {
                        // Label
                        Text(element.name)
                    }
                }


                Button("Neuer Eintrag") {
                    showSheet = true
                }
                .sheet(isPresented: $showSheet) {
                    AddShoppingItemView(shoppingList: $shoppingList, showSheet: $showSheet)
                        .presentationDragIndicator(.visible)
                        .presentationDetents([.medium, .fraction(0.2)])
                }
                .navigationTitle("Einkaufsliste")
                .toolbar {
                    NavigationLink {
                        // Destination
                        RecommendedShopsView()
                    } label: {
                        // Beliebige Views als Label
                        Image(systemName: "bag")
                    }
                }

            }
        }
    }

    private func deleteItem(itemId: UUID) {
        shoppingList.removeAll(where: {$0.id == itemId})
    }
}

#Preview {
    NavigationHomeView()
}
