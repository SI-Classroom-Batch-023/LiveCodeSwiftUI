//
//  TabItem.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 15.01.25.
//

import Foundation

enum TabItem {
    case home, search, settings

    var title: String {
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Suche"
        case .settings:
            return "Einstellungen"
        }
    }

    var icon: String {
        switch self {
        case .home:
            return "house"
        case .search:
            return "magnifyingglass"
        case .settings:
            return "gear"
        }
    }
}
