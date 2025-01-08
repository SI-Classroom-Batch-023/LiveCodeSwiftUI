//
//  PickerTest.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 08.01.25.
//

import SwiftUI

enum Day: String, CaseIterable, Identifiable {
    case mon = "Montag"
    case tue = "Dienstag"
    case wed = "Mittwoch"
    case thu = "Donnerstag"
    case fri = "Feitag"

    var id: String { rawValue }
}


enum Day2: String, CaseIterable {
    case mon = "Montag"
    case tue = "Dienstag"
    case wed = "Mittwoch"
    case thu = "Donnerstag"
    case fri = "Feitag"
}


struct PickerTest: View {

    @State private var selectedDay1: String = "Mo"

    let days = ["Montag", "Dienstag", "Mittwoch", "Donnerstag", "Freitag"]
    @State private var selectedDay2: String = "Dienstag"

    @State private var selectedDay3: Day = Day.wed

    @State private var selectedDay4: Day2 = Day2.thu

    @State private var selectedDate: Date = Date()

    var body: some View {

        // MARK: Picker
        Picker("Wähle einen Tag", selection: $selectedDay1) {
            // Der Typ vom tag und der selection müssen gleich sein! (hier beide String)
            // Wenn ein User eine der Views im Picker antippt, wird über den Tag der Wert in der selection verändert.
            // zB: Der User tippt auf den Text Montag, dann wird "Mo" in den selctedDay1 geschrieben.
            Text("Montag").tag("Mo")
            Text("Dienstag").tag("Di")
            Text("Mittwoch").tag("Mi")
            Text("Donnerstag").tag("Do")
            Text("Freitag").tag("Fr")
        }
        .pickerStyle(.wheel)
        .onChange(of: selectedDay1) {
            print(selectedDay1)
        }

        Picker("Wähle einen Tag", selection: $selectedDay2) {
            ForEach(days, id: \.self) { day in
                // ForEach ordnet den Views automatisch die id als tag zu.
                // Die id ist hier ein String (Name vom Wochentag).
                // Wenn ein User eine View antippt wird dieser Name in die selection geschrieben.
                // zB: Der User tippt auf den Text Dienstag, dann wird "Dienstag" in selectedDay2 geschrieben.
                Text(day)
            }
        }
        .pickerStyle(.segmented)


        // MARK: Picker mit Enum
        Picker("Wähle einen Tag", selection: $selectedDay3) {
            // ForEach ordnet den Views automatisch die id als tag zu.
            // Die id ist hier ein String, die selection ist allerdings vom Typ Day - Problem: die Typen müssen gleich sein!
            // Deswegen müssen wir hier zusätzlich den Tag mit .tag überschreiben, dadurch haben der Tag und die selection den Typ Day und passen zusammen.
            // zB: Der User tippt auf den Text Mittwoch, dann wird Day.wed in selectedDay3 gespeichert.
            ForEach(Day.allCases) { day in
                Text(day.rawValue).tag(day)
            }
        }
        .pickerStyle(.menu)


        Picker("Wähle einen Tag", selection: $selectedDay4) {
            ForEach(Day2.allCases, id: \.self) { day in
                Text(day.rawValue)
            }
        }
        .onChange(of: selectedDay4) {
            print(selectedDay4)
        }

        Divider()

        DatePicker("Wähle ein Datum", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            .onChange(of: selectedDate) {
                print(selectedDate.formatted(date: .abbreviated, time: .shortened))
            }



    }
}

#Preview {
    PickerTest()
}
