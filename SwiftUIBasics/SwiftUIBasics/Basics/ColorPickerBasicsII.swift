//
//  ColorPickerBasicsII.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/23/23.
//

import SwiftUI

struct ColorPickerBasicsII: View {
    @State private var shape1Color = Color.yellow
        @State private var shape2Color = Color.blue
        
        var body: some View {
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 120, height: 120)
                        .foregroundColor(shape1Color)
                        .padding(.horizontal)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 120, height: 120)
                        .foregroundColor(shape2Color)
                        .padding(.horizontal)
                }
                
                Form {
                    Section(header: Text("Color Settings")) {
                        ColorPicker("Shape 1 color", selection: $shape1Color)
                        ColorPicker("Shape 2 color", selection: $shape2Color)
                    }
                }
                .frame(height: 150)
                .padding(.horizontal)
                .padding(.top, 50)
            }
        }
}

#Preview {
    ColorPickerBasicsII()
}
