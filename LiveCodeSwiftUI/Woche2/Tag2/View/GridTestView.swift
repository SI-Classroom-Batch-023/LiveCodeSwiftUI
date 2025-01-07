//
//  GridTestView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 07.01.25.
//

import SwiftUI

struct GridTestView: View {
    var body: some View {
        VStack {

            // Spalten sind hier nicht untereinander aligned
            VStack {
                Text("VStack und HStack")
                    .font(.title3)
                HStack {
                    Text("Willkommen")
                    Text("Welt")
                }
                HStack {
                    Text("Welt")
                    Text("Willkommen")
                }
            }
            .padding(.bottom, 16)

            // Grid aligned die Reihen und Spalten für uns
            Grid {
                Text("Grid")
                    .font(.title3)
                GridRow() {
                    Text("Willkommen")
                        .gridColumnAlignment(.leading)
                    Text("Welt")
                        .gridColumnAlignment(.leading)
                }
                GridRow {
                    Text("Welt")
                    Text("Willkommen")
                }
                .border(.blue)
            }
            .border(.black)

            Grid {
                GridRow {
                    Image("hp_1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .gridCellUnsizedAxes(.vertical) // das Image darf die Reihe nicht vertikal vergrößern
                    Image("profilePicture")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            .border(.black)

            Grid(alignment: .bottomTrailing) { // Alignment für das ganze Grid

                GridRow(alignment: .top) { // Alignment für eine Zeile
                    Text("Reihe 1")
                    ForEach(0..<2) { number in
                        Color.red
                            .aspectRatio(contentMode: .fit)
                    }
                    Text("Test2")
                }

                GridRow {
                    Color.clear
                        .gridCellUnsizedAxes([.horizontal, .vertical])
                    ForEach(0..<2) { number in
                        Color.green
                            .aspectRatio(contentMode: .fit)
                    }
                    Text("Test")
                        .gridColumnAlignment(.center) // Alignment für eine Spalte
                    Text("Reihe 2")
                }

                GridRow {
                    Color.blue
                        .gridCellColumns(2) // Element nimmt zwei Spalten ein
                        .gridCellUnsizedAxes(.vertical)
                    ForEach(0..<2) { number in
                        Color.blue
                            .aspectRatio(contentMode: .fit)
                    }
                    Text("Reihe 3")
                        .gridCellAnchor(.bottomLeading) // Alignment für eine Zelle
                }

            }
            .padding()




        }

    }
}

#Preview {
    GridTestView()
}
