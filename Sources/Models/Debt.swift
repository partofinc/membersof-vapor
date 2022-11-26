

import Foundation

public struct Debt: Codable, Hashable, Identifiable {
    
    public let id: UUID
    public let currency: String
    public let amount: Decimal
    
    public init(id: UUID, currency: String, amount: Decimal) {
        self.id = id
        self.currency = currency
        self.amount = amount
    }
}
