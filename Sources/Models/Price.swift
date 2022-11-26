

import Foundation

public struct Price: Codable, Hashable, Identifiable {
    
    public let id: UUID
    public let currency: String
    public let value: Decimal
    
    public init(id: UUID, currency: String, value: Decimal) {
        self.id = id
        self.currency = currency
        self.value = value
    }
}
