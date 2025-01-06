//
//  CvView.swift
//  LiveCodeSwiftUI
//
//  Created by Jana Jansen on 06.01.25.
//

import SwiftUI

struct CvView: View {
    var body: some View {
        VStack {
            CvHeader()

            CvContent()
        }
    }
}

#Preview {
    CvView()
}
