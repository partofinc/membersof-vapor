

import Foundation

public struct Payment: Codable, Hashable, Identifiable {
    
    public let id: UUID
    public let currency: String
    public let amount: Decimal
    public let date: Date
    public let debt: Debt?
    
    public init(id: UUID, currency: String, amount: Decimal, date: Date, debt: Debt?) {
        self.id = id
        self.currency = currency
        self.amount = amount
        self.date = date
        self.debt = debt
    }
}
