//
//  ToggleBasics.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/23/23.
//

import SwiftUI

struct ToggleBasics: View {
    @State private var isEnabled = false
    
    var body: some View {
        VStack {
            
            Toggle(isOn: $isEnabled) {
                Label("Airplane mode", systemImage: "airplane.circle.fill")
            }
            .padding()
            
            Toggle(isOn: $isEnabled) {
                Label("Airplane mode", systemImage: "airplane.circle.fill")
            }
            .padding()
            .tint(.purple)
            .controlSize(.large)
            .toggleStyle(.button)

        }
    }
}

#Preview {
    ToggleBasics()
}
