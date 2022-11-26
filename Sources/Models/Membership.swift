
import Foundation


public struct Membership: Codable, Hashable, Equatable, Identifiable {
    
    public let id: UUID
    public let name: String
    public let visits: Int
    public let period: Period
    public let length: Int
    public let createDate: Date
    public let teamId: UUID
    public let pricing: [Price]
    
    public init(id: UUID, name: String, visits: Int, period: Period, length: Int, createDate: Date, teamId: UUID, pricing: [Price]) {
        self.id = id
        self.name = name
        self.visits = visits
        self.period = period
        self.length = length
        self.createDate = createDate
        self.teamId = teamId
        self.pricing = pricing
    }
}


public extension Membership {
    
    enum Period: String, Codable, Hashable, Identifiable, CaseIterable {
        
        case unlimited
        case day
        case week
        case month
        case year
        
        public var id: Self { self }
    }
}

