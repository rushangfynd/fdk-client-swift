

import Foundation
public extension ApplicationClient {
    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var aggregator: String

        public var success: Bool

        public var status: String

        public var message: String

        public var orderId: String

        public var deliveryAddressId: String?

        public var cartId: String?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case success

            case status

            case message

            case orderId = "order_id"

            case deliveryAddressId = "delivery_address_id"

            case cartId = "cart_id"
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            self.aggregator = aggregator

            self.success = success

            self.status = status

            self.message = message

            self.orderId = orderId

            self.deliveryAddressId = deliveryAddressId

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)

            status = try container.decode(String.self, forKey: .status)

            message = try container.decode(String.self, forKey: .message)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)

            try? container.encode(cartId, forKey: .cartId)
        }
    }
}
