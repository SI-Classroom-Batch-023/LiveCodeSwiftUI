//
//  RecommedShops.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 15.01.25.
//

import SwiftUI

struct RecommendedShopsView: View {

    @State private var recommendedShops = ["Lidl", "Penny"]
    var body: some View {
        List(recommendedShops, id: \.self) { shop in
            Text(shop)
        }
    }
}

#Preview {
    RecommendedShopsView()
}
