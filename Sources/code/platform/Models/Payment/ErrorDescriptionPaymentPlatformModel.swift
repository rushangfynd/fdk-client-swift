

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ErrorDescription
         Used By: Payment
     */

    class ErrorDescription: Codable {
        public var merchantOrderId: String?

        public var expired: Bool?

        public var cancelled: Bool?

        public var merchantName: String?

        public var amount: Double?

        public var msg: String?

        public var invalidId: Bool?

        public var paymentTransactionId: String?

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case expired

            case cancelled

            case merchantName = "merchant_name"

            case amount

            case msg

            case invalidId = "invalid_id"

            case paymentTransactionId = "payment_transaction_id"
        }

        public init(amount: Double? = nil, cancelled: Bool? = nil, expired: Bool? = nil, invalidId: Bool? = nil, merchantName: String? = nil, merchantOrderId: String? = nil, msg: String? = nil, paymentTransactionId: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.expired = expired

            self.cancelled = cancelled

            self.merchantName = merchantName

            self.amount = amount

            self.msg = msg

            self.invalidId = invalidId

            self.paymentTransactionId = paymentTransactionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

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
                cancelled = try container.decode(Bool.self, forKey: .cancelled)

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
                amount = try container.decode(Double.self, forKey: .amount)

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
                invalidId = try container.decode(Bool.self, forKey: .invalidId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cancelled, forKey: .cancelled)

            try? container.encode(merchantName, forKey: .merchantName)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(msg, forKey: .msg)

            try? container.encode(invalidId, forKey: .invalidId)

            try? container.encode(paymentTransactionId, forKey: .paymentTransactionId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: ErrorDescription
         Used By: Payment
     */

    class ErrorDescription: Codable {
        public var merchantOrderId: String?

        public var expired: Bool?

        public var cancelled: Bool?

        public var merchantName: String?

        public var amount: Double?

        public var msg: String?

        public var invalidId: Bool?

        public var paymentTransactionId: String?

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case expired

            case cancelled

            case merchantName = "merchant_name"

            case amount

            case msg

            case invalidId = "invalid_id"

            case paymentTransactionId = "payment_transaction_id"
        }

        public init(amount: Double? = nil, cancelled: Bool? = nil, expired: Bool? = nil, invalidId: Bool? = nil, merchantName: String? = nil, merchantOrderId: String? = nil, msg: String? = nil, paymentTransactionId: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.expired = expired

            self.cancelled = cancelled

            self.merchantName = merchantName

            self.amount = amount

            self.msg = msg

            self.invalidId = invalidId

            self.paymentTransactionId = paymentTransactionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

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
                cancelled = try container.decode(Bool.self, forKey: .cancelled)

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
                amount = try container.decode(Double.self, forKey: .amount)

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
                invalidId = try container.decode(Bool.self, forKey: .invalidId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cancelled, forKey: .cancelled)

            try? container.encode(merchantName, forKey: .merchantName)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(msg, forKey: .msg)

            try? container.encode(invalidId, forKey: .invalidId)

            try? container.encode(paymentTransactionId, forKey: .paymentTransactionId)
        }
    }
}