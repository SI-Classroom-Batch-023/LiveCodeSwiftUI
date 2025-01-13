//
//  Contact.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 13.01.25.
//

import Foundation

struct Contact: Identifiable {
    let id: UUID = UUID()
    var name: String
    var number: String
    var isFavorite: Bool = false
}
