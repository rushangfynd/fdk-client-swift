

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ValidateCustomerRequest
         Used By: Payment
     */
    class ValidateCustomerRequest: Codable {
        public var aggregator: String

        public var merchantParams: [String: Any]?

        public var phoneNumber: String

        public var orderItems: [[String: Any]]?

        public var deliveryAddress: [String: Any]?

        public var payload: String?

        public var transactionAmountInPaise: Int

        public var billingAddress: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case merchantParams = "merchant_params"

            case phoneNumber = "phone_number"

            case orderItems = "order_items"

            case deliveryAddress = "delivery_address"

            case payload

            case transactionAmountInPaise = "transaction_amount_in_paise"

            case billingAddress = "billing_address"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, deliveryAddress: [String: Any]? = nil, merchantParams: [String: Any]? = nil, orderItems: [[String: Any]]? = nil, payload: String? = nil, phoneNumber: String, transactionAmountInPaise: Int) {
            self.aggregator = aggregator

            self.merchantParams = merchantParams

            self.phoneNumber = phoneNumber

            self.orderItems = orderItems

            self.deliveryAddress = deliveryAddress

            self.payload = payload

            self.transactionAmountInPaise = transactionAmountInPaise

            self.billingAddress = billingAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            do {
                orderItems = try container.decode([[String: Any]].self, forKey: .orderItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payload = try container.decode(String.self, forKey: .payload)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(orderItems, forKey: .orderItems)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encode(payload, forKey: .payload)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        }
    }
}
