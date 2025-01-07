//
//  IdentifiableUser.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 07.01.25.
//

import Foundation

struct IdentifiableUser: Identifiable {
    // Ihr könnt euch erstmal aussuchen ob ihr die UUID direkt verwenden wollt oder zu einem String konvertiert
//    let id: UUID = UUID()
    let id: String = UUID().uuidString
    var name: String
    var image: String
}
