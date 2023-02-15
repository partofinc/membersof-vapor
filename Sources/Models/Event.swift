
import Foundation

public struct Event: Codable, Hashable, Identifiable {
    
    public let id: UUID
    public let name: String
    public let createDate: Date
    public let startDate: Date
    public let duration: TimeInterval
    public let finished: Bool
    public let team: Team
    public let memberships: [Membership]
    
    public init(id: UUID, name: String, createDate: Date, startDate: Date, duration: TimeInterval, finished: Bool, team: Team, memberships: [Membership]) {
        self.id = id
        self.name = name
        self.createDate = createDate
        self.startDate = startDate
        self.duration = duration
        self.finished = finished
        self.team = team
        self.memberships = memberships
    }
}


