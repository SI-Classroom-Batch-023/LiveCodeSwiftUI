//
//  Animations2.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 10.01.25.
//

import SwiftUI

struct Animations2: View {

    @State private var animate: Bool = false

    @State private var animate2: Bool = false

    @State private var offsetValue: CGFloat = 0

    @State private var inputText: String = ""

    var body: some View {
        VStack {
            Button("animate") {
                withAnimation {
                    animate.toggle()
                }

                if offsetValue == 100 {
                    offsetValue = 0
                } else {
                    offsetValue = 100
                }

                animate2.toggle()
            }

            Image(systemName: "sun.max")
                .resizable()
                .frame(width: 80, height: 80)
                .rotationEffect(animate ? .degrees(185) : .zero)

            Image(systemName: "sun.max")
                .resizable()
                .frame(width: 80, height: 80)
                .rotationEffect(animate2 ? .degrees(185) : .zero)
                .animation(.bouncy(duration: 0.5).speed(2).delay(0.5).repeatCount(3), value: animate2)

            Image(systemName: "sun.max")
                .resizable()
                .frame(width: 80, height: 80)
                .offset(x: offsetValue)
                .animation(.bouncy, value: offsetValue)

            Text(animate ? "World" : "Hello")
                .font(.title)
                .foregroundStyle(animate ? .blue : .red)

            ZStack {
                if animate {
                    Image(systemName: "sun.max")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .transition(.scale.combined(with: .slide))
                }
            }
            .frame(width: 80, height: 80)


            Image(systemName: "wifi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .symbolEffect(.variableColor.hideInactiveLayers, value: animate)

            Image(systemName: "bell")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .symbolEffect(.bounce, value: animate)
        }
    }
}

#Preview {
    Animations2()
}
