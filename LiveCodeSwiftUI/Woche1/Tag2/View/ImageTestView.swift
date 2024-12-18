//
//  ImageTestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 18.12.24.
//

import SwiftUI

struct ImageTestView: View {
    var body: some View {
        VStack {
            Image(systemName: "cart")
                .bold()
                .font(.largeTitle)

            Image(systemName: "cart")
                .resizable()
                .scaledToFit()
//                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 80)
                .border(.black)

            Image(systemName: "cart")
                .resizable()
                .scaledToFill()
//                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 80)
                .clipped()
                .border(.black)


            Divider()


            Image("hp_1")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
            


        }
    }
}

#Preview {
    ImageTestView()
}
