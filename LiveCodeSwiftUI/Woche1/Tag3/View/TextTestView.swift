//
//  TextTestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 19.12.24.
//

import SwiftUI

struct TextTestView: View {
    var body: some View {

        VStack {
            Text("Willkommen")
                .foregroundStyle(.orange)
                .font(.title)
                .fontWeight(.black)
                .italic()
                .fontDesign(.serif)
                .underline()


            Text("Hallo Welt")
                .foregroundStyle(.red)
                .fontWidth(.expanded)


            Text("test text langer text hallo langer text langer text langer text langer text langer text ")
                .frame(width: 100)
                .lineLimit(3)
                .multilineTextAlignment(.center)

            Text("Test Text")
                .background(.red)
                .padding()
                .background(.blue)








        }
    }
}

#Preview {
    TextTestView()
}
