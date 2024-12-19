//
//  BackgroundBorderTestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 19.12.24.
//

import SwiftUI

struct BackgroundBorderTestView: View {
    var body: some View {
        VStack {

            HStack {
                VStack {
                    Text("Hallo")
                        .font(.title)
                        .padding(8)
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.orange)
                        }

                    Text("Hallo")
                        .font(.title)
                        .padding(8)
                        .background(.orange)
                        .clipShape(.rect(cornerRadius: 10))
                }

                Text("Hallo")
                    .font(.title)
                    .padding(8)
                    .background(.orange)
                    .clipShape(.rect(cornerRadii: RectangleCornerRadii(topLeading: 10)))

                Text("Hallo")
                    .font(.title)
                    .padding(8)
                    .background(.orange)
                    .clipShape(.capsule)

                Button {

                } label: {
                    Image(systemName: "clock")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                .padding()
                .background(.black)
                .clipShape(.buttonBorder)
            }

            Divider()
                .frame(height: 3)
                .overlay(Color.red)

            Image("profilePicture")
                .resizable()
                .frame(width: 70, height: 70)
                .padding(16)
                .background(.radialGradient(colors: [.red, .orange, .yellow], center: .topLeading, startRadius: 20, endRadius: 130))

            Image("profilePicture")
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(.circle)
                .padding(16)
                .background(.radialGradient(colors: [.red, .orange, .yellow], center: .topLeading, startRadius: 20, endRadius: 50))
                .clipShape(.circle)

            Image("profilePicture")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(.rect(cornerRadius: 20))
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
//                        .inset(by: -5)
                        .stroke(.orange, lineWidth: 15) // vergrößert die View, Liniendicke ist auf dem Rahmen zentriert
                }

            Image("profilePicture")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(.rect(cornerRadius: 20))
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(.orange, lineWidth: 15) // border wächst nach Innen in die View hinein, View wird nicht größer
                }

            Image("profilePicture")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(.orange, lineWidth: 10)
                }


        }
    }
}

#Preview {
    BackgroundBorderTestView()
}
