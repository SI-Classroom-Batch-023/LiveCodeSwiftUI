//
//  BookView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 18.12.24.
//

import SwiftUI

struct BookView: View {
    // Hier ist Platz für Variablen/Konstanten und die Parameter
    let book: Book

    var body: some View {
        // innerhalb des bodys können wir View und Modifier anwenden
        HStack {

            Image(book.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 100)
                .clipped()
                .overlay(alignment: .bottom) {
                    Text("Top Hit!")
                        .font(.caption)
                        .background(.orange.opacity(0.8))
                        .foregroundStyle(.white)
                }

            VStack(alignment: .leading) {
                Text(book.title)

                Divider()

                HStack {
                    Text("von \(book.author)")
                    Divider()
                        .frame(height: 16)
                    Text("\(String(format: "%.1f", book.stars)) Sterne")
                }
            }

            Button {
                // Action
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .padding(8)
            }
            .tint(.orange)
            .buttonStyle(.borderedProminent)
            .clipShape(.capsule)

        }
        .padding()
        .background(.white.opacity(0.7))
        .clipShape(.buttonBorder)
        .shadow(color: .gray, radius: 8)
    }
}

#Preview {
    let book1 = Book(title: "Harry Potter und der Stein der Weisen", author: "JK Rowling", stars: 5, image: "hp_1")

    BookView(book: book1)
}
