//
//  VolumeOverview.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 10.01.25.
//

import SwiftUI

struct VolumeOverview: View {

    @State private var volumeSettings = [
        VolumeSetting(value: 5, icon: "alarm"),
        VolumeSetting(value: 1, icon: "phone"),
        VolumeSetting(value: 10, icon: "speaker")
    ]

    var body: some View {
        VStack {
            ForEach($volumeSettings) { $volume in
                VolumeSubView(volume: $volume)
            }
        }
    }
}

#Preview {
    VolumeOverview()
}
