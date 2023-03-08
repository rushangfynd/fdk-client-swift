

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserRequest
         Used By: Payment
     */
    class CreateOrderUserRequest: Codable {
        public var meta: [String: Any]?

        public var paymentMethods: CreateOrderUserPaymentMethods

        public var currency: String

        public var failureCallbackUrl: String

        public var paymentLinkId: String

        public var successCallbackUrl: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case paymentMethods = "payment_methods"

            case currency

            case failureCallbackUrl = "failure_callback_url"

            case paymentLinkId = "payment_link_id"

            case successCallbackUrl = "success_callback_url"
        }

        public init(currency: String, failureCallbackUrl: String, meta: [String: Any]? = nil, paymentLinkId: String, paymentMethods: CreateOrderUserPaymentMethods, successCallbackUrl: String) {
            self.meta = meta

            self.paymentMethods = paymentMethods

            self.currency = currency

            self.failureCallbackUrl = failureCallbackUrl

            self.paymentLinkId = paymentLinkId

            self.successCallbackUrl = successCallbackUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode(CreateOrderUserPaymentMethods.self, forKey: .paymentMethods)

            currency = try container.decode(String.self, forKey: .currency)

            failureCallbackUrl = try container.decode(String.self, forKey: .failureCallbackUrl)

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            successCallbackUrl = try container.decode(String.self, forKey: .successCallbackUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(failureCallbackUrl, forKey: .failureCallbackUrl)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)

            try? container.encodeIfPresent(successCallbackUrl, forKey: .successCallbackUrl)
        }
    }
}
