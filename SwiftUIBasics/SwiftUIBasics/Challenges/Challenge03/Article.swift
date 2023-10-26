//
//  Article.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/26/23.
//

import Foundation

struct Article: Identifiable {
    let id = UUID()
    var category: String
    var title: String
    var author: String
    var date: String
    var abstract: String
    
    init(category: String, title: String, author: String, date: String, abstract: String) {
        self.category = category
        self.title = title
        self.author = author
        self.date = date
        self.abstract = abstract
    }
    
    var subheadline: String {
        author + " " + "•" + " " + date
    }
}

extension Article {
    static var short: Article = {
        Article(category: "Highlights", title: "We've Seen This Before, and It Doesn't End Well for Anyone", author: "John West", date: "May 6, 2020", abstract: "")
    }()
    
    static var full: Article = {
        Article(category: "For you", title: "Easy-to-Win Trade War Costs Taxpayers", author: "John West", date: "May 6, 2020", abstract: "Convictions horror justice prejudice chaos aversion morality play right virtues. Faith overcome ultimate depths snare society contradict ocean prejudice.")
    }()
}
