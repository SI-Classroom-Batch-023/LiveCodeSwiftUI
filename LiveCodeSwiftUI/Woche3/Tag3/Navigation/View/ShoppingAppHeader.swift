//
//  ShoppingAppHeader.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 15.01.25.
//

import SwiftUI

struct ShoppingAppHeader: View {
    var body: some View {
        VStack {
            Text("Shopping App")
                .font(.headline)
                .padding()
        }
        .frame(maxWidth: .infinity)
        .background(.orange)
    }
}

#Preview {
    ShoppingAppHeader()
}
