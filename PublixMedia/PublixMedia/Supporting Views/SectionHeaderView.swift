//
//  SectionHeaderView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct SectionHeaderView: View {
    let title: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title.capitalized)
//                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 24, weight: .bold))
            Divider()
        }
    }
}

#Preview {
    SectionHeaderView(title: "GAMES")
}
