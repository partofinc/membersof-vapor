
import Vapor
import Fluent
import Model
import Foundation

extension Team: Content {

    final class Entity: Model {

        static var schema: String = "teams"

        @ID(cusotm: "id")
        var id: UUID?
    }
}
