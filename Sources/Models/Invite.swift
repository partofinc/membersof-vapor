//
//  Invite.swift
//  MembersOf
//
//  Created by Ravil Khusainov on 8/26/22.
//

import Foundation

public struct Invite: Codable, Identifiable, Hashable {
    
    public let id: UUID
    public let createDate: Date
    public let name: String?
    public let role: Supervisor.Role?
    public let teamId: UUID?
    
    public init(id: UUID, createDate: Date, name: String?, role: Supervisor.Role?, teamId: UUID?) {
        self.id = id
        self.createDate = createDate
        self.name = name
        self.role = role
        self.teamId = teamId
    }
}

extension Invite {
    var title: String {
        let name = self.name ?? "Noname"
        return name + "(Pending)"
    }
}
