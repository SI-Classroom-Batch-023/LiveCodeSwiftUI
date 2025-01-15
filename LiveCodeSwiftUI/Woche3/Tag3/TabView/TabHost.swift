//
//  TabHost.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 15.01.25.
//

import SwiftUI

struct TabHost: View {

    @State private var currentTab: TabItem = .home

    var body: some View {

        TabView(selection: $currentTab) {
            Tab(TabItem.home.title, systemImage: TabItem.home.icon, value: .home) {
                HomeScreen(currentTab: $currentTab)
            }
            Tab(TabItem.search.title, systemImage: TabItem.search.icon, value: .search) {
                SearchScreen()
            }
            Tab(TabItem.settings.title, systemImage: TabItem.settings.icon, value: .settings) {
                SettingsScreen()
            }
        }
        .onChange(of: currentTab) {
            print(currentTab.title)
        }

    }
}

#Preview {
    TabHost()
}
