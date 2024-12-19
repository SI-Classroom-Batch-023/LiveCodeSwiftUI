//
//  LayoutTestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 19.12.24.
//

import SwiftUI

struct LayoutTestView2: View {
    var body: some View {

        VStack {
            Text("Lebenslauf")
            HStack {

                VStack {
                    Text("Ausbildung")
                }

                VStack {
                    Text("Erfahrung")
                }
            }


        }



    }
}

#Preview {
    LayoutTestView2()
}
