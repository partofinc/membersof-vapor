

import Foundation

public struct Social: Codable, Hashable, Identifiable {
    
    public let id: UUID
    public let media: Media
    public let account: String
    public let order: Int
    public let memberId: UUID?
    public let teamId: UUID?
    
    public init(id: UUID, media: Media, account: String, order: Int, memberId: UUID?, teamId: UUID?) {
        self.id = id
        self.media = media
        self.account = account
        self.order = order
        self.memberId = memberId
        self.teamId = teamId
    }
}

public extension Social {
    
    enum Media: String, Codable, Hashable, Identifiable {
        
        case instagram
        case telegram
        case twitter
        case facebook
        
        public var id: Self { self }
    }
    
    var title: String {
        account + "(\(media.rawValue))"
    }
}

extension Array where Element == Social.Media {
    static var all: [Element] {[
            .instagram,
            .telegram,
            .twitter,
            .facebook
        ]
    }
}

