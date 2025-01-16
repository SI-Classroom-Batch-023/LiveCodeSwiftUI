//
//  Message.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.01.25.
//

import Foundation

struct Message: Identifiable, Hashable {
    let id: UUID = UUID()
    var text: String
    var isReceived: Bool
    var date = Date()
}
