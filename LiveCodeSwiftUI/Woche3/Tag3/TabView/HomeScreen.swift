//
//  HomeScreen.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 15.01.25.
//

import SwiftUI

struct HomeScreen: View {

    @Binding var currentTab: TabItem

    var body: some View {

        ZStack {
            VStack {
                Image(systemName: TabItem.home.icon)
                    .font(.title)
                Text(TabItem.home.title)
                    .font(.headline)
            }

            Button {
                currentTab = .settings
            } label: {
                Image(systemName: "gear")
                    .font(.title)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding()
        }
    }
}

#Preview {
    HomeScreen(currentTab: .constant(.home))
}
