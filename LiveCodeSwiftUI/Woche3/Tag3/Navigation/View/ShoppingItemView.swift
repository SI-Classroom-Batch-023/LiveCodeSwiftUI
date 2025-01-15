//
//  ShoppingItemView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 15.01.25.
//

import SwiftUI

struct ShoppingItemView: View {

    let shoppingItem: ShoppingItem

    var body: some View {
        // Hier KEINEN weiteren NavigationStack hinzufügen, der liegt in NavigationHomeView
        // Niemals mehrere NavigationStacks ineinander verschachtelt, auch nicht über mehrere Views hinweg
        Text(shoppingItem.name)
            .navigationTitle("Detail Screen")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {

                } label: {
                    Image(systemName: "bell")
                }
            }
    }
}

#Preview {
    // Wenn wir in der Preview zB toolbar, navigationTitle oder andere NavigationStack-Features verwenden wollen
    NavigationStack {
        ShoppingItemView(shoppingItem: ShoppingItem(name: "Banane"))
    }
}
