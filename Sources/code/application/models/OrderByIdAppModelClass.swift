import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderById
         Used By: Order
     */
    class OrderById: Codable {
        public var order: OrderSchema

        public enum CodingKeys: String, CodingKey {
            case order
        }

        public init(order: OrderSchema) {
            self.order = order
        }

        public func duplicate() -> OrderById {
            let dict = self.dictionary!
            let copy = OrderById(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            order = try container.decode(OrderSchema.self, forKey: .order)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }
}