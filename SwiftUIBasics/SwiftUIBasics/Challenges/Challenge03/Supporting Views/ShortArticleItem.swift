//
//  ShortArticleItem.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct ShortArticleItem: View {
    let article: Article
    
    var body: some View {
        VStack(alignment: .leading) {
            ArticleHeader(article: article)
           
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
    VStack {
        ShortArticleItem(article: Article.short)
    }
}
