

import Foundation

public struct Team: Codable, Hashable, Identifiable {
    
    public let id: UUID
    public let name: String
    public let brief: String
    public let createDate: Date
    public let social: [Social]
    public let crew: [Supervisor]
    
    public init(id: UUID, name: String, brief: String, createDate: Date, social: [Social], crew: [Supervisor]) {
        self.id = id
        self.name = name
        self.brief = brief
        self.createDate = createDate
        self.social = social
        self.crew = crew
    }
}


