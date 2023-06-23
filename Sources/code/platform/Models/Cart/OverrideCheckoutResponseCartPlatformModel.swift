

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutResponse
         Used By: Cart
     */

    class OverrideCheckoutResponse: Codable {
        public var data: [String: Any]

        public var message: String

        public var orderId: String

        public var cart: [String: Any]

        public var success: String

        public enum CodingKeys: String, CodingKey {
            case data

            case message

            case orderId = "order_id"

            case cart

            case success
        }

        public init(cart: [String: Any], data: [String: Any], message: String, orderId: String, success: String) {
            self.data = data

            self.message = message

            self.orderId = orderId

            self.cart = cart

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([String: Any].self, forKey: .data)

            message = try container.decode(String.self, forKey: .message)

            orderId = try container.decode(String.self, forKey: .orderId)

            cart = try container.decode([String: Any].self, forKey: .cart)

            success = try container.decode(String.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
