

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var orderId: String

        public var cartId: String?

        public var deliveryAddressId: String?

        public var status: String

        public var success: Bool

        public var message: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case cartId = "cart_id"

            case deliveryAddressId = "delivery_address_id"

            case status

            case success

            case message

            case aggregator
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            self.orderId = orderId

            self.cartId = cartId

            self.deliveryAddressId = deliveryAddressId

            self.status = status

            self.success = success

            self.message = message

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(cartId, forKey: .cartId)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
