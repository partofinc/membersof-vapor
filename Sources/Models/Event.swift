
import Foundation

public struct Event: Codable, Hashable, Identifiable {
    
    public let id: UUID
    public let name: String
    public let createDate: Date
    public let startDate: Date
    public let estimatedEndDate: Date?
    public let endDate: Date?
    public let team: Team
    public let memberships: [Membership]
    
    public init(id: UUID, name: String, createDate: Date, startDate: Date, estimatedEndDate: Date?, endDate: Date?, team: Team, memberships: [Membership]) {
        self.id = id
        self.name = name
        self.createDate = createDate
        self.startDate = startDate
        self.estimatedEndDate = estimatedEndDate
        self.endDate = endDate
        self.team = team
        self.memberships = memberships
    }
}


