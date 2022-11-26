

import Foundation

public struct Visit: Codable, Hashable, Identifiable {
    
    public let id: UUID
    public let checkInDate: Date
    public let event: Event
    public let member: Member
    public let subscription: Subscription
    
    public init(id: UUID, checkInDate: Date, event: Event, member: Member, subscription: Subscription) {
        self.id = id
        self.checkInDate = checkInDate
        self.event = event
        self.member = member
        self.subscription = subscription
    }
}
