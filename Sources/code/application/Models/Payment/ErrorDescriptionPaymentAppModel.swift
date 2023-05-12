

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ErrorDescription
         Used By: Payment
     */
    class ErrorDescription: Codable {
        public var invalidId: Bool?

        public var amount: Double?

        public var cancelled: Bool?

        public var paymentTransactionId: String?

        public var msg: String?

        public var expired: Bool?

        public var merchantName: String?

        public var merchantOrderId: String?

        public enum CodingKeys: String, CodingKey {
            case invalidId = "invalid_id"

            case amount

            case cancelled

            case paymentTransactionId = "payment_transaction_id"

            case msg

            case expired

            case merchantName = "merchant_name"

            case merchantOrderId = "merchant_order_id"
        }

        public init(amount: Double? = nil, cancelled: Bool? = nil, expired: Bool? = nil, invalidId: Bool? = nil, merchantName: String? = nil, merchantOrderId: String? = nil, msg: String? = nil, paymentTransactionId: String? = nil) {
            self.invalidId = invalidId

            self.amount = amount

            self.cancelled = cancelled

            self.paymentTransactionId = paymentTransactionId

            self.msg = msg

            self.expired = expired

            self.merchantName = merchantName

            self.merchantOrderId = merchantOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invalidId = try container.decode(Bool.self, forKey: .invalidId)

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
                cancelled = try container.decode(Bool.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentTransactionId = try container.decode(String.self, forKey: .paymentTransactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                msg = try container.decode(String.self, forKey: .msg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantName = try container.decode(String.self, forKey: .merchantName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(invalidId, forKey: .invalidId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(cancelled, forKey: .cancelled)

            try? container.encode(paymentTransactionId, forKey: .paymentTransactionId)

            try? container.encode(msg, forKey: .msg)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(merchantName, forKey: .merchantName)

            try? container.encode(merchantOrderId, forKey: .merchantOrderId)
        }
    }
}
