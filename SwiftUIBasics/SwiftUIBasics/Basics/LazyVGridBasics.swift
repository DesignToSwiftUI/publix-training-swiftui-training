//
//  LazyVGridBasics.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/23/23.
//

import SwiftUI

struct LazyVGridBasics: View {
    let colors = [Color.blue, .green, .red, .pink, .orange, .teal, .purple, .gray]
    let rowColors = [Color.black, .cyan, .red, .pink, .orange]
    let columns = [GridItem(), GridItem(), GridItem()] //,
    let rows = [GridItem(), GridItem(), GridItem()]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columns) {
                ForEach(0..<2) { color in
                    HStack {
                        Image(systemName: "star")
                        Text("Text goes here")
                    }
                }
            }
            
            LazyHGrid(rows: rows, spacing: 5) {
                ForEach(rowColors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(color)
                        .frame(width: 100, height: 50)
                }
            }
        }
        
        
    }
}

#Preview {
    LazyVGridBasics()
}
