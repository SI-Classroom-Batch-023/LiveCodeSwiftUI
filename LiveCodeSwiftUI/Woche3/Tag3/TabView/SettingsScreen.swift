//
//  SettingsScreen.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 15.01.25.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        Image(systemName: TabItem.settings.icon)
            .font(.title)
        Text(TabItem.settings.title)
            .font(.headline)
    }
}

#Preview {
    SettingsScreen()
}
