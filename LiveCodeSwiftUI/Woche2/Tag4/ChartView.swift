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


//    var category: String {
//        if price < 2 {
//            return "Cheap"
//        } else {
//            return "Expensive"
//        }
//    }
}

struct ChartView: View {

    let products = [
        Product(title: "Apfel", price: 2.5, place: "Market"),
        Product(title: "Banane", price: 1.8, place: "Market"),
        Product(title: "Milch", price: 1.2, place: "Supermarket"),
        Product(title: "Brot", price: 3.0, place: "Supermarket"),
        Product(title: "Käse", price: 2.7, place: "Supermarket")
    ]

    let temperatures = [20, 24, 20, 10, 5, 0]

    var body: some View {
        VStack {
            Chart {
                ForEach(products){product in
                    BarMark(
                        x: .value("Produkt", product.title),
                        y: .value("Preis", product.price)
                    )
                    //                .foregroundStyle(by: .value("Place", product.price < 2 ? "Cheap" : "Expensive"))
                    .foregroundStyle(product.price == products.map({ $0.price }).min() ? .green : .red)
                }
            }
            //        .chartForegroundStyleScale([
            //                    "Cheap": .green, "Expensive": .red
            //                ])
            //        .chartForegroundStyleScale([
            //            "Market": .green, "Supermarket": .red
            //        ])
            .chartYScale(domain: [0, 6])
            .frame(width: 320, height: 320)
            .onAppear {
                print(products)
                print(products.map({ $0.price }))
            }

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
            .chartYScale(domain: [0, 35])
            .chartYAxisLabel("Temperatur")
            .frame(width: 320, height: 320)
            .padding(.vertical)



        }
    }
}

#Preview {
    ChartView()
}
