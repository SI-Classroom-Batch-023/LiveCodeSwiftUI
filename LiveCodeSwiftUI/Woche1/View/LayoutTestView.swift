//
//  LayoutTestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 17.12.24.
//

import SwiftUI

struct LayoutTestView: View {
    var body: some View {

        VStack(alignment: .leading) {
            Text("Oben")
            Spacer()
            HStack(alignment: .top) {
                Text("Links")
                    .padding(40)
                    .border(.black)
                Spacer()
                Text("Rechts")
            }
            .padding()
            .border(.black)
            Spacer()
            Text("Unten")

        }
        .border(.black)

    }
}

#Preview {
    LayoutTestView()
}
