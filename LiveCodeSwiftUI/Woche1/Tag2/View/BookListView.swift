//
//  BookListView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 18.12.24.
//

import SwiftUI

struct BookListView: View {

    let books = [
        Book(title: "Harry Potter und der Stein der Weisen", author: "JK Rowling", stars: 5, image: "hp_1"),
        Book(title: "Harry Potter und die Kammer des Schreckens", author: "JK Rowling", stars: 4, image: "hp_2"),
        Book(title: "Harry Potter und der gefangene von Askaban", author: "JK Rowling", stars: 5, image: "hp_3"),
        Book(title: "Harry Potter und der Feuerpokal", author: "JK Rowling", stars: 5, image: "hp_4"),
        Book(title: "Harry Potter und der Orden des Phönix", author: "JK Rowling", stars: 5, image: "hp_5"),
        Book(title: "Harry Potter und der Halbblutprinz", author: "JK Rowling", stars: 5, image: "hp_6"),
        Book(title: "Harry Potter und die heiligtümer des Todes", author: "JK Rowling", stars: 5, image: "hp_7")
    ]

    var body: some View {
        VStack {
            ScrollView {
                BookView(book: books[0])
                BookView(book: books[1])
                BookView(book: books[2])
                BookView(book: books[3])
                BookView(book: books[4])
                BookView(book: books[5])
                BookView(book: books[6])
            }
        }
        .background {
            Image("bookBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .blur(radius: 8)
        }
    }
}

#Preview {
    BookListView()
}
