//
//  GradientTestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 19.12.24.
//

import SwiftUI

struct GradientTestView: View {
    var body: some View {
        VStack {
            Circle()
                .fill(.angularGradient(colors: [.red, .orange, .yellow, .red], center: .center, startAngle: .zero, endAngle: .degrees(360)))
                .blur(radius: 10)
                .frame(width: 100, height: 100)
                .clipShape(.circle)


            Circle()
                .fill(.conicGradient(colors: [.red, .orange, .yellow, .red], center: .center, angle: .zero))
                .frame(width: 100, height: 100)


            Circle()
                .fill(.radialGradient(colors: [.red, .orange, .yellow, .red], center: .center, startRadius: 10, endRadius: 40))
                .frame(width: 100, height: 100)


            Circle()
                .fill(.ellipticalGradient(colors: [.red, .orange, .yellow, .red]))
                .frame(width: 100, height: 100)


            Circle()
                .fill(.linearGradient(colors: [.red, .orange, .yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 100, height: 100)

        }
    }
}

#Preview {
    GradientTestView()
}
