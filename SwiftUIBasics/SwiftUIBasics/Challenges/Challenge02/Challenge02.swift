//
//  Challenge02.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/25/23.
//

import SwiftUI


struct Person: Identifiable {
    let id: UUID
    var name: String
    var points: Int
    var friendType: FriendType
    var type: StatusType
    var request: RequestType
    var isOnline: Bool
    
    init(name: String, points: Int, friendType: FriendType = .none, type: StatusType, request: RequestType, isOnline: Bool) {
        self.id = UUID()
        self.name = name
        self.points = points
        self.friendType = friendType
        self.type = type
        self.request = request
        self.isOnline = isOnline
    }
}

extension Person {
    static var defaultPerson1: Person  = {
        Self(name: "Helen Evans", points: 0, type: .button, request: .gift, isOnline: false)
    }()
    
    static var defaultPerson2: Person  = {
        Self(name: "Helen Evans", points: 0, type: .button, request: .gift, isOnline: true)
    }()
    
    static var defaultPerson3: Person  = {
        Self(name: "Helen Evans", points: 0, type: .button, request: .none, isOnline: false)
    }()
}

struct Challenge02: View {
    let requests = [
        Person(name: "Helen Evans", points: 0, type: .button, request: .gift, isOnline: false),
        Person(name: "Margo Craig", points: 0, type: .button, request: .invite, isOnline: true),
        Person(name: "Joshua Lawrance", points: 0, type: .button, request: .invite, isOnline: true)
    ]
    
    let friends = [
        Person(name: "Andrew Parker", points: 30, friendType: .flame, type: .badge, request: .none, isOnline: false),
        Person(name: "Bernice Miles", points: 26, friendType: .crown, type: .badge, request: .none, isOnline: true),
        Person(name: "Zack Johns", points: 18, friendType: .star, type: .badge, request: .none, isOnline: false),
        Person(name: "Karen Castilo", points: 30, friendType: .flame, type: .badge, request: .none, isOnline: false),
        Person(name: "Kiero Dotson", points: 18, friendType: .star, type: .badge, request: .none, isOnline: false),
        Person(name: "Joshua Lawrance II", points: 26, friendType: .crown, type: .badge, request: .none, isOnline: false)
    ]
    
    @State private var allFriends: [Person] = []
    
    var body: some View {
        List {
            Section(header: SectionHeader(title: "Request")) {
                ForEach(requests) { person in
                    RowItem(person: person)
                }
            }

            Section(header: SectionHeader(title: "Friends")) {
                ForEach(friends) { person in
                    RowItem(person: person)
                }
            }
        }
    }
    
}

#Preview {
    Challenge02()
}
