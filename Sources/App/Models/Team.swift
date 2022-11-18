
import Vapor
import Fluent
import Models

extension Team: Content {

    final class Entity: Model {

        static var schema: String = "teams"

        @IDProperty<Entity, UUID>(key: .id)
        var id: UUID?
    }
}

