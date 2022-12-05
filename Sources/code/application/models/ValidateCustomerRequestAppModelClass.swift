

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateCustomerRequest
         Used By: Payment
     */
    class ValidateCustomerRequest: Codable {
        public var transactionAmountInPaise: Int

        public var aggregator: String

        public var merchantParams: [String: Any]

        public var payload: String

        public var phoneNumber: String

        public enum CodingKeys: String, CodingKey {
            case transactionAmountInPaise = "transaction_amount_in_paise"

            case aggregator

            case merchantParams = "merchant_params"

            case payload

            case phoneNumber = "phone_number"
        }

        public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
            self.transactionAmountInPaise = transactionAmountInPaise

            self.aggregator = aggregator

            self.merchantParams = merchantParams

            self.payload = payload

            self.phoneNumber = phoneNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)

            payload = try container.decode(String.self, forKey: .payload)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)

            try? container.encode(payload, forKey: .payload)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        }
    }
}
