//
//  SearchScreen.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 15.01.25.
//

import SwiftUI

struct SearchScreen: View {
    var body: some View {
        VStack {
            Image(systemName: TabItem.search.icon)
                .font(.title)
            Text(TabItem.search.title)
                .font(.headline)

            TabView {
                Text("Name")
                Text("Datum")
                Text("Bewertung")
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}

#Preview {
    SearchScreen()
}
