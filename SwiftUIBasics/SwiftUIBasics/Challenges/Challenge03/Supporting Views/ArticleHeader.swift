//
//  ArticleHeader.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct ArticleHeader: View {
    let article: Article
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(article.category.uppercased())
                .foregroundStyle(Color.blue)
                .fontWeight(.semibold)
            
            Text(article.title)
                .fixedSize(horizontal: false, vertical: true)
                .font(.title)
                .bold()
            
            Text(article.subheadline)
                .foregroundStyle(Color.gray)
        }
    }
}

#Preview {
    ArticleHeader(article: Article.short)
}
