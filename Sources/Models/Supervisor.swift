

import Foundation

public struct Supervisor: Codable, Hashable, Identifiable {
    
    public let id: UUID
    public let role: Role
    public let order: Int
    public let member: Member
    public let teamId: UUID?
    
    public init(id: UUID, role: Role, order: Int, member: Member, teamId: UUID?) {
        self.id = id
        self.role = role
        self.order = order
        self.member = member
        self.teamId = teamId
    }
}

public extension Supervisor {
    
    enum Role: String, Codable, Hashable, Identifiable {
        
        case owner
        case admin
        case manager
        
        public var id: Self { self }
    }
}


extension Array where Element == Supervisor.Role {
    static var all: Self {[
        .owner,
        .admin,
        .manager
    ]}
}
