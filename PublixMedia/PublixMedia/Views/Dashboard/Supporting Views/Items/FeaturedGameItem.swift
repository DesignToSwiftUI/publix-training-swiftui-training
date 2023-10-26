//
//  FeaturedGameItem.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct FeaturedGameItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray)
            .frame(width: 120, height: 150)
            
            Text("NBA2K24")
            Text("Coming Soon")
        }
    }
}

#Preview {
    FeaturedGameItem()
}
