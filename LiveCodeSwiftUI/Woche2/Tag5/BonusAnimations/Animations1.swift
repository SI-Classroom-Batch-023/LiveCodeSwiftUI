//
//  Animations1.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 10.01.25.
//

import SwiftUI

struct Animations1: View {

    @State private var animate: Bool = false
    @State private var animate2: Bool = false

    var body: some View {
        VStack {
            HStack {
                Button("animate") {
                    // Animation gebunden an einen State/eine Variable
                    withAnimation(.bouncy) {
                        animate.toggle()
                    }
                }

                Image(systemName: "sun.max")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .scaleEffect(animate ? 0.5 : 1.0)

                Image(systemName: "sun.max")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .scaleEffect(animate ? 0.5 : 1.0)
            }


            HStack {
                Button("animate") {
                    animate2.toggle()
                }

                Image(systemName: "sun.max")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .scaleEffect(animate2 ? 0.5 : 1.0)
                    .animation(.bouncy, value: animate2)
                // Animation gebunden an eine View

                Image(systemName: "sun.max")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .scaleEffect(animate2 ? 0.5 : 1.0)
            }



        }
    }
}

#Preview {
    Animations1()
}
