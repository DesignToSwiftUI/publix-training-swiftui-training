//
//  SectionHeader.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/25/23.
//

import SwiftUI

struct SectionHeader: View {
    let title: String
    
    var body: some View {
        Text(title)
            .textCase(nil)
            .font(.system(size: 28, weight: .bold))
            .foregroundStyle(Color.black)
    }
}

#Preview {
    SectionHeader(title: "Request")
}
