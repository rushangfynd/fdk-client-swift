

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */

    class CreatePaymentLinkRequest: Codable {
        public var amount: Double

        public var meta: CreatePaymentLinkMeta

        public var externalOrderId: String

        public var mobileNumber: String

        public var email: String

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case amount

            case meta

            case externalOrderId = "external_order_id"

            case mobileNumber = "mobile_number"

            case email

            case description
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.amount = amount

            self.meta = meta

            self.externalOrderId = externalOrderId

            self.mobileNumber = mobileNumber

            self.email = email

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            email = try container.decode(String.self, forKey: .email)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(description, forKey: .description)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */

    class CreatePaymentLinkRequest: Codable {
        public var amount: Double

        public var meta: CreatePaymentLinkMeta

        public var externalOrderId: String

        public var mobileNumber: String

        public var email: String

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case amount

            case meta

            case externalOrderId = "external_order_id"

            case mobileNumber = "mobile_number"

            case email

            case description
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.amount = amount

            self.meta = meta

            self.externalOrderId = externalOrderId

            self.mobileNumber = mobileNumber

            self.email = email

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            email = try container.decode(String.self, forKey: .email)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(description, forKey: .description)
        }
    }
}
