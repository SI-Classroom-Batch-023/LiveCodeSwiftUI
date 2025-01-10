//
//  VolumeSubViiew.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 10.01.25.
//

import SwiftUI

struct VolumeSubView: View {

    @Binding var volume: VolumeSetting

    var body: some View {
        HStack {
            Image(systemName: volume.icon)
            Slider(value: $volume.value, in: 1...15, step: 1)
        }
    }
}

#Preview {
    VolumeSubView(volume: .constant(VolumeSetting(value: 3, icon: "alarm")))
}
