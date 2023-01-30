

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var status: String

        public var merchantOrderId: String

        public var orderId: String

        public var aggregator: String

        public var amount: Int

        public var contact: String

        public var email: String

        public var vpa: String

        public var method: String

        public var customerId: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case status

            case merchantOrderId = "merchant_order_id"

            case orderId = "order_id"

            case aggregator

            case amount

            case contact

            case email

            case vpa

            case method

            case customerId = "customer_id"

            case currency
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.status = status

            self.merchantOrderId = merchantOrderId

            self.orderId = orderId

            self.aggregator = aggregator

            self.amount = amount

            self.contact = contact

            self.email = email

            self.vpa = vpa

            self.method = method

            self.customerId = customerId

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)

            contact = try container.decode(String.self, forKey: .contact)

            email = try container.decode(String.self, forKey: .email)

            vpa = try container.decode(String.self, forKey: .vpa)

            method = try container.decode(String.self, forKey: .method)

            customerId = try container.decode(String.self, forKey: .customerId)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
