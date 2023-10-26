//
//  LabelBasics.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/23/23.
//

import SwiftUI

struct LabelBasics: View {
    var body: some View {
        VStack(spacing: 20) {
            Label("Settings", systemImage: "gearshape.fill")
            
            Label("Settings", systemImage: "gearshape.fill")
                .labelStyle(.iconOnly)
            
            Label("Settings", systemImage: "gearshape.fill")
                .labelStyle(.titleOnly)
            
            Label {
                Text("Design to SwiftUI")
            } icon: {
                Image("dtslarge")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
        }
    }
}

#Preview {
    LabelBasics()
}
