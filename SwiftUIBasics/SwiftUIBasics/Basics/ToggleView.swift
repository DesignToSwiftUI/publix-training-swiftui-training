//
//  ToggleView.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/25/23.
//

import SwiftUI

struct ToggleView: View {
    @State private var isOn = false
    @State private var value = 0.0
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0 ..< 5) { item in
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 300, height: 150)
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 30)
            }
        }
    }
}

#Preview {
    ToggleView()
}
