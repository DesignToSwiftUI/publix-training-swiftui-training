//
//  Challenge01.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/24/23.
//

import SwiftUI

struct Challenge01: View {
    let features = ["Feature 1", "Feature 2", "Feature 3", "Feature 4"]
    let columns = [GridItem(), GridItem()]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading) {
                Text("Deluxe Room")
                    .font(.largeTitle)
                Text("Occupying floors 51-59, this spacious suite enjoys beautiful views of Bangkok City.")
            }
            
            HStack {
                ForEach(0 ..< 2) { item in
                    PlaceholderView(image: "airplane")
                    if item == 0 {
                        Spacer()
                    }
                }
            }
            
            grid
            footer
        }
        .padding(.horizontal)
    }
    
    var grid: some View {
        LazyVGrid(columns: columns) {
            ForEach(features, id: \.self) { feature in
                HStack {
                    Image(systemName: "star")
                        .symbolVariant(.circle)
                        .symbolVariant(.fill)
                    Text(feature)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                }
            }
        }
    }
    var footer: some View {
        HStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: "minus")
                        .frame(width:5, height: 5)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(.black)
                
                Text("0")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .frame(width: 15)
                
                Button(action: {}) {
                    Image(systemName: "plus")
                        .frame(width:5, height: 5)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(.black)
            }
            
            Text("$75 p/night")
            Spacer()
            Button("BOOK") {}
                .fontWeight(.bold)
                .buttonBorderShape(.capsule)
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
                .tint(.purple)
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(.gray.opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    Challenge01()
}
