//
//  Chat.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 16.01.25.
//

import Foundation

struct Chat: Identifiable, Hashable {
    let id = UUID()
    var contact: Contact2
    var messages: [Message]
}
