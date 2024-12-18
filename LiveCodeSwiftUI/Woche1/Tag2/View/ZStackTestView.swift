//
//  ZStackTestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 18.12.24.
//

import SwiftUI

struct ZStackTestView: View {
    var body: some View {
        // Der ZStack passt seine Größe an seinen Inhalt an
        // Ein großes Image oder ein Image mit .fill wird größer als der Bildschirm und vergrößert auch den ZStack
        // Andere Views innerhalb vom ZStack werden dadurch auch beeinflusst, weil sie ihre größe an den ZStack anpassen
        // -> Die BookView wird hier so breit dass sie aus dem Bildschirm herausragt und wir nicht mehr alles sehen können :(
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
        // Die gleiche View wie oben aber mit dem Hintergrund Bild als background
        // Der background vergrößert nicht den Stack und hat dadurch keinen Einfluss auf die anderen Views (hier BookView)
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
