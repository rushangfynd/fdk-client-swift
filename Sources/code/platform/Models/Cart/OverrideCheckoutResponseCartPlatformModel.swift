

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutResponse
         Used By: Cart
     */

    class OverrideCheckoutResponse: Codable {
        public var orderId: String

        public var success: String

        public var cart: [String: Any]

        public var message: String

        public var data: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case success

            case cart

            case message

            case data
        }

        public init(cart: [String: Any], data: [String: Any], message: String, orderId: String, success: String) {
            self.orderId = orderId

            self.success = success

            self.cart = cart

            self.message = message

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            success = try container.decode(String.self, forKey: .success)

            cart = try container.decode([String: Any].self, forKey: .cart)

            message = try container.decode(String.self, forKey: .message)

            data = try container.decode([String: Any].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
