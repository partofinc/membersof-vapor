//
//  Subscription.swift
//  MembersOf
//
//  Created by Ravil Khusainov on 8/10/22.
//

import Foundation

public struct Subscription: Codable, Hashable, Identifiable {
    
    public let id: UUID
    public let startDate: Date
    public let endDate: Date?
    public let member: Member
    public let membership: Membership
    public let payments: [Payment]
    
    public init(id: UUID, startDate: Date, endDate: Date?, member: Member, membership: Membership, payments: [Payment]) {
        self.id = id
        self.startDate = startDate
        self.endDate = endDate
        self.member = member
        self.membership = membership
        self.payments = payments
    }
}
