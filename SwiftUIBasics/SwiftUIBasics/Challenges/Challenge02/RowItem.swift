//
//  RowItem.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/25/23.
//

import SwiftUI

enum StatusType {
    case badge
    case button
}

enum RequestType {
    case gift
    case invite
    case friend
    case none
}

enum FriendType: String {
    case flame
    case crown
    case star
    case none
}


struct RowItem: View {
    let person: Person
    
    var body: some View {
        HStack {
            Image(systemName: "person")
                .symbolVariant(.circle)
                .symbolVariant(.fill)
                .foregroundStyle(Color.gray)
                .font(.system(size: 32))
                .overlay(alignment: .bottomTrailing) {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 12, height: 12)
                        .opacity(person.isOnline ? 1 : 0)
                }
            Text(person.name)
                .font(.system(size: 18, weight: .bold))
            Spacer()
            
            if person.type == StatusType.button {
                if person.request == .gift {
                    Button(action: {}) {
                        HStack {
                            Text("GET")
                            Image(systemName: "gift")
                        }
                    }
                    .buttonBorderShape(.capsule)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.regular)
                } else {
                    
                    Button(action: {}) {
                        HStack {
                            Text("Accept")
                        }
                    }
                    .buttonBorderShape(.capsule)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.regular)
                        
                }
            } else if person.type == .badge {
                HStack(spacing: 5) {
                    Image(systemName: person.friendType.rawValue)
                        .symbolVariant(.fill)
                    Text("\(person.points)")
                }
                .foregroundStyle(Color.blue)
            } else {
                Text("")
            }
        }
    }
}

#Preview {
    VStack {
        RowItem(person: Person.defaultPerson1)
        RowItem(person: Person.defaultPerson2)
        RowItem(person: Person.defaultPerson3)
    }
}
