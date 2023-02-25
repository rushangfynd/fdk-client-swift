

import Foundation
public extension ApplicationClient {
    /*
         Model: ChargeCustomerRequest
         Used By: Payment
     */
    class ChargeCustomerRequest: Codable {
        public var orderId: String

        public var transactionToken: String?

        public var verified: Bool?

        public var aggregator: String

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case transactionToken = "transaction_token"

            case verified

            case aggregator

            case amount
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String? = nil, verified: Bool? = nil) {
            self.orderId = orderId

            self.transactionToken = transactionToken

            self.verified = verified

            self.aggregator = aggregator

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                transactionToken = try container.decode(String.self, forKey: .transactionToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(transactionToken, forKey: .transactionToken)

            try? container.encode(verified, forKey: .verified)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)
        }
    }
}
