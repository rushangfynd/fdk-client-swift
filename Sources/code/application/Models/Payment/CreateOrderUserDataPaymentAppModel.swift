

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserData
         Used By: Payment
     */
    class CreateOrderUserData: Codable {
        public var email: String?

        public var orderId: String?

        public var aggregator: String?

        public var amount: Double?

        public var customerId: String?

        public var contact: String?

        public var merchantOrderId: String?

        public var currency: String?

        public var method: String?

        public var callbackUrl: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case orderId = "order_id"

            case aggregator

            case amount

            case customerId = "customer_id"

            case contact

            case merchantOrderId = "merchant_order_id"

            case currency

            case method

            case callbackUrl = "callback_url"
        }

        public init(aggregator: String? = nil, amount: Double? = nil, callbackUrl: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, email: String? = nil, merchantOrderId: String? = nil, method: String? = nil, orderId: String? = nil) {
            self.email = email

            self.orderId = orderId

            self.aggregator = aggregator

            self.amount = amount

            self.customerId = customerId

            self.contact = contact

            self.merchantOrderId = merchantOrderId

            self.currency = currency

            self.method = method

            self.callbackUrl = callbackUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                method = try container.decode(String.self, forKey: .method)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(email, forKey: .email)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encode(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(contact, forKey: .contact)

            try? container.encode(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(method, forKey: .method)

            try? container.encode(callbackUrl, forKey: .callbackUrl)
        }
    }
}
