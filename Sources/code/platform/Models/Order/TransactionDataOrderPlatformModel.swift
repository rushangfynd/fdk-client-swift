

import Foundation

public extension PlatformClient.Order {
    /*
         Model: TransactionData
         Used By: Order
     */

    class TransactionData: Codable {
        public var status: String?

        public var uniqueReferenceNumber: String?

        public var amountPaid: Double?

        public var entity: String?

        public var transactionId: String?

        public var paymentId: String?

        public var terminalId: String?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case uniqueReferenceNumber = "unique_reference_number"

            case amountPaid = "amount_paid"

            case entity

            case transactionId = "transaction_id"

            case paymentId = "payment_id"

            case terminalId = "terminal_id"

            case currency
        }

        public init(amountPaid: Double? = nil, currency: String? = nil, entity: String? = nil, paymentId: String? = nil, status: String? = nil, terminalId: String? = nil, transactionId: String? = nil, uniqueReferenceNumber: String? = nil) {
            self.status = status

            self.uniqueReferenceNumber = uniqueReferenceNumber

            self.amountPaid = amountPaid

            self.entity = entity

            self.transactionId = transactionId

            self.paymentId = paymentId

            self.terminalId = terminalId

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uniqueReferenceNumber = try container.decode(String.self, forKey: .uniqueReferenceNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entity = try container.decode(String.self, forKey: .entity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                terminalId = try container.decode(String.self, forKey: .terminalId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(uniqueReferenceNumber, forKey: .uniqueReferenceNumber)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(entity, forKey: .entity)

            try? container.encodeIfPresent(transactionId, forKey: .transactionId)

            try? container.encodeIfPresent(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(terminalId, forKey: .terminalId)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: TransactionData
         Used By: Order
     */

    class TransactionData: Codable {
        public var status: String?

        public var uniqueReferenceNumber: String?

        public var amountPaid: Double?

        public var entity: String?

        public var transactionId: String?

        public var paymentId: String?

        public var terminalId: String?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case uniqueReferenceNumber = "unique_reference_number"

            case amountPaid = "amount_paid"

            case entity

            case transactionId = "transaction_id"

            case paymentId = "payment_id"

            case terminalId = "terminal_id"

            case currency
        }

        public init(amountPaid: Double? = nil, currency: String? = nil, entity: String? = nil, paymentId: String? = nil, status: String? = nil, terminalId: String? = nil, transactionId: String? = nil, uniqueReferenceNumber: String? = nil) {
            self.status = status

            self.uniqueReferenceNumber = uniqueReferenceNumber

            self.amountPaid = amountPaid

            self.entity = entity

            self.transactionId = transactionId

            self.paymentId = paymentId

            self.terminalId = terminalId

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uniqueReferenceNumber = try container.decode(String.self, forKey: .uniqueReferenceNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entity = try container.decode(String.self, forKey: .entity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                terminalId = try container.decode(String.self, forKey: .terminalId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(uniqueReferenceNumber, forKey: .uniqueReferenceNumber)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(entity, forKey: .entity)

            try? container.encodeIfPresent(transactionId, forKey: .transactionId)

            try? container.encodeIfPresent(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(terminalId, forKey: .terminalId)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
