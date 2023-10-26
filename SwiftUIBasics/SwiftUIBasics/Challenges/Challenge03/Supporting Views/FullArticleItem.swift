//
//  FullArticleItem.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct FullArticleItem: View {
    let article: Article
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.baseGray)
                .frame(height: 192)
            
            ArticleHeader(article: article)
            Text(article.abstract)
           
            Button(action: {}) {
                HStack {
                    Text("Learn more")
                    Image(systemName: "chevron.right")
                }
                .foregroundStyle(Color.gray)
            }
            
            Divider()
        }
    }
}

#Preview {
    FullArticleItem(article: Article.full)
}
