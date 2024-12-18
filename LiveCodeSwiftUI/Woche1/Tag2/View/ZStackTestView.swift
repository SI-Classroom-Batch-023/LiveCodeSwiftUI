//
//  ZStackTestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 18.12.24.
//

import SwiftUI

struct ZStackTestView: View {
    var body: some View {
        ZStack {

            Image("happy_people")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .clipped() // bringt hier auch nichts

            BookView(
                book: Book(
                    title: "Test Titel", author: "Test Autor", stars: 4.5,
                    image: "hp_1"))

        }
    }
}

struct ZStackTestView2: View {
    var body: some View {
        VStack {
            Spacer()
            BookView(book: Book(
                title: "Test Titel", author: "Test Autor", stars: 4.5,
                image: "hp_1")
            )
            Spacer()

        }
        .background {
            Image("happy_people")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .clipped()
        }

    }
}

#Preview {
    ZStackTestView()
}

#Preview {
    ZStackTestView2()
}
