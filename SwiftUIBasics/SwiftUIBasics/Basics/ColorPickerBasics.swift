//
//  ColorPickerBasics.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/23/23.
//

import SwiftUI

struct ColorPickerBasics: View {
    @State private var bgColor = Color.blue.opacity(0.5)
        
    var body: some View {
        VStack {
            ColorPicker("Choose a background color", selection: $bgColor)
                .padding(.horizontal)
            
            ColorPicker("Choose a background color", selection: $bgColor, supportsOpacity: false)
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
        .ignoresSafeArea()
    }
}

#Preview {
    ColorPickerBasics()
}
