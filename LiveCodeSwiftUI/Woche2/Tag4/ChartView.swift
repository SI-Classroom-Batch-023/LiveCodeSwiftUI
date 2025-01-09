//
//  ChartView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 09.01.25.
//

import SwiftUI
import Charts

struct Product: Identifiable {
    let id = UUID()
    var title: String
    var price: Double
    var place: String
}

// BONUS: ChartView
struct ChartView: View {

    let products = [
        Product(title: "Apfel", price: 2.5, place: "Market"),
        Product(title: "Apfel", price: 2.5, place: "Supermarket"),
        Product(title: "Banane", price: 1.8, place: "Market"),
        Product(title: "Milch", price: 1.2, place: "Supermarket"),
        Product(title: "Brot", price: 3.0, place: "Supermarket"),
        Product(title: "Käse", price: 2.7, place: "Supermarket")
    ]

    let temperatures = [20, 24, 20, 10, 5, 0]

    var body: some View {
        VStack {
            // MARK: Version 1: Produkte nach Ort wo sie gekauft wurden eingefärbt
            Chart {
                ForEach(products){product in
                    BarMark(
                        x: .value("Produkt", product.title),
                        y: .value("Preis", product.price)
                    )
                    .foregroundStyle(by: .value("Place", product.place))
                }
            }
            .chartForegroundStyleScale([
                "Market": .green, "Supermarket": .red
            ])

            // MARK: Version 2: Produkte eingefäbrt ob sie günstig sind (unter 2€) oder teuer (über 2€)
//            Chart {
//                ForEach(products){product in
//                    BarMark(
//                        x: .value("Produkt", product.title),
//                        y: .value("Preis", product.price)
//                    )
//                    .foregroundStyle(by: .value("Place", product.price < 2 ? "Cheap" : "Expensive"))
//                }
//            }
//            .chartForegroundStyleScale(["Cheap": .green, "Expensive": .red])

            // MARK: Version 3: Das Produkt mit dem kleinsten Preis ist grün eingefärbt, alle anderen rot
//            Chart {
//                ForEach(products){product in
//                    BarMark(
//                        x: .value("Produkt", product.title),
//                        y: .value("Preis", product.price)
//                    )
//                    .foregroundStyle(product.price == products.map({ $0.price }).min() ? .green : .red)
//                }
//            }
            .onAppear {
                print(products)
                // map geht in einer Schleife über alle Elemente aus dem products Array und wandelt sie in etwas anders um, in diesem fall in ihren Preis.
                // Das Ergebnis ist also ein Array in dem nur die Preise stehen
                // [2.5, 1.8, 1.2, 3.0, 2.7]
                print(products.map({ $0.price }))
            }
            // Für alle 3 Versionen
            .chartYScale(domain: [0, 6])
            .frame(width: 320, height: 320)


            Divider()


            Chart {
                ForEach(temperatures.indices, id: \.self) { index in
                    LineMark(
                        x: .value("Index", index),
                        y: .value("Temperatur", temperatures[index])
                    )
                }
                RuleMark(
                    y: .value("Grenze", 22)
                )
                .foregroundStyle(.red)
            }
            .chartYScale(domain: [0, 35]) // Skalierung der y-Achse
            .chartYAxisLabel("Temperatur") // Achsenbeschriftung
            .frame(width: 320, height: 320)
            .padding(.vertical)



        }
    }
}

#Preview {
    ChartView()
}
